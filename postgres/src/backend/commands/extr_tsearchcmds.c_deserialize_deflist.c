
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int text ;
typedef int Node ;
typedef int List ;
typedef int Datum ;


 int * DatumGetTextPP (int ) ;
 int ERRCODE_SYNTAX_ERROR ;
 int ERROR ;
 int * NIL ;
 char* VARDATA_ANY (int *) ;
 int VARSIZE_ANY_EXHDR (int *) ;
 int elog (int ,char*,int) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 int isspace (unsigned char) ;
 int * lappend (int *,int ) ;
 int makeDefElem (int ,int *,int) ;
 scalar_t__ makeString (int ) ;
 scalar_t__ palloc (int) ;
 int pfree (char*) ;
 int pstrdup (char*) ;
 int text_to_cstring (int *) ;

List *
deserialize_deflist(Datum txt)
{
 text *in = DatumGetTextPP(txt);
 List *result = NIL;
 int len = VARSIZE_ANY_EXHDR(in);
 char *ptr,
      *endptr,
      *workspace,
      *wsptr = ((void*)0),
      *startvalue = ((void*)0);
 typedef enum
 {
  CS_WAITKEY,
  CS_INKEY,
  CS_INQKEY,
  CS_WAITEQ,
  CS_WAITVALUE,
  CS_INSQVALUE,
  CS_INDQVALUE,
  CS_INWVALUE
 } ds_state;
 ds_state state = CS_WAITKEY;

 workspace = (char *) palloc(len + 1);
 ptr = VARDATA_ANY(in);
 endptr = ptr + len;
 for (; ptr < endptr; ptr++)
 {
  switch (state)
  {
   case CS_WAITKEY:
    if (isspace((unsigned char) *ptr) || *ptr == ',')
     continue;
    if (*ptr == '"')
    {
     wsptr = workspace;
     state = CS_INQKEY;
    }
    else
    {
     wsptr = workspace;
     *wsptr++ = *ptr;
     state = CS_INKEY;
    }
    break;
   case CS_INKEY:
    if (isspace((unsigned char) *ptr))
    {
     *wsptr++ = '\0';
     state = CS_WAITEQ;
    }
    else if (*ptr == '=')
    {
     *wsptr++ = '\0';
     state = CS_WAITVALUE;
    }
    else
    {
     *wsptr++ = *ptr;
    }
    break;
   case CS_INQKEY:
    if (*ptr == '"')
    {
     if (ptr + 1 < endptr && ptr[1] == '"')
     {

      *wsptr++ = *ptr++;
     }
     else
     {
      *wsptr++ = '\0';
      state = CS_WAITEQ;
     }
    }
    else
    {
     *wsptr++ = *ptr;
    }
    break;
   case CS_WAITEQ:
    if (*ptr == '=')
     state = CS_WAITVALUE;
    else if (!isspace((unsigned char) *ptr))
     ereport(ERROR,
       (errcode(ERRCODE_SYNTAX_ERROR),
        errmsg("invalid parameter list format: \"%s\"",
         text_to_cstring(in))));
    break;
   case CS_WAITVALUE:
    if (*ptr == '\'')
    {
     startvalue = wsptr;
     state = CS_INSQVALUE;
    }
    else if (*ptr == 'E' && ptr + 1 < endptr && ptr[1] == '\'')
    {
     ptr++;
     startvalue = wsptr;
     state = CS_INSQVALUE;
    }
    else if (*ptr == '"')
    {
     startvalue = wsptr;
     state = CS_INDQVALUE;
    }
    else if (!isspace((unsigned char) *ptr))
    {
     startvalue = wsptr;
     *wsptr++ = *ptr;
     state = CS_INWVALUE;
    }
    break;
   case CS_INSQVALUE:
    if (*ptr == '\'')
    {
     if (ptr + 1 < endptr && ptr[1] == '\'')
     {

      *wsptr++ = *ptr++;
     }
     else
     {
      *wsptr++ = '\0';
      result = lappend(result,
           makeDefElem(pstrdup(workspace),
              (Node *) makeString(pstrdup(startvalue)), -1));
      state = CS_WAITKEY;
     }
    }
    else if (*ptr == '\\')
    {
     if (ptr + 1 < endptr && ptr[1] == '\\')
     {

      *wsptr++ = *ptr++;
     }
     else
      *wsptr++ = *ptr;
    }
    else
    {
     *wsptr++ = *ptr;
    }
    break;
   case CS_INDQVALUE:
    if (*ptr == '"')
    {
     if (ptr + 1 < endptr && ptr[1] == '"')
     {

      *wsptr++ = *ptr++;
     }
     else
     {
      *wsptr++ = '\0';
      result = lappend(result,
           makeDefElem(pstrdup(workspace),
              (Node *) makeString(pstrdup(startvalue)), -1));
      state = CS_WAITKEY;
     }
    }
    else
    {
     *wsptr++ = *ptr;
    }
    break;
   case CS_INWVALUE:
    if (*ptr == ',' || isspace((unsigned char) *ptr))
    {
     *wsptr++ = '\0';
     result = lappend(result,
          makeDefElem(pstrdup(workspace),
             (Node *) makeString(pstrdup(startvalue)), -1));
     state = CS_WAITKEY;
    }
    else
    {
     *wsptr++ = *ptr;
    }
    break;
   default:
    elog(ERROR, "unrecognized deserialize_deflist state: %d",
      state);
  }
 }

 if (state == CS_INWVALUE)
 {
  *wsptr++ = '\0';
  result = lappend(result,
       makeDefElem(pstrdup(workspace),
          (Node *) makeString(pstrdup(startvalue)), -1));
 }
 else if (state != CS_WAITKEY)
  ereport(ERROR,
    (errcode(ERRCODE_SYNTAX_ERROR),
     errmsg("invalid parameter list format: \"%s\"",
      text_to_cstring(in))));

 pfree(workspace);

 return result;
}
