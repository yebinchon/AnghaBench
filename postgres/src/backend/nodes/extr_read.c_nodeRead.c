
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;
typedef scalar_t__ NodeTag ;
typedef int Node ;
typedef int List ;


 int ERROR ;


 int * NIL ;






 int atoi (char const*) ;
 int debackslash (char const*,int) ;
 int elog (int ,char*,...) ;
 int * lappend (int *,void*) ;
 int * lappend_int (int *,int) ;
 int * lappend_oid (int *,int ) ;
 scalar_t__ makeBitString (char*) ;
 scalar_t__ makeFloat (char*) ;
 scalar_t__ makeInteger (int ) ;
 scalar_t__ makeString (int ) ;
 int memcpy (char*,char const*,int) ;
 scalar_t__ nodeTokenType (char const*,int) ;
 char* palloc (int) ;
 int * parseNodeString () ;
 char* pg_strtok (int*) ;
 scalar_t__ strtol (char const*,char**,int) ;
 int strtoul (char const*,char**,int) ;

void *
nodeRead(const char *token, int tok_len)
{
 Node *result;
 NodeTag type;

 if (token == ((void*)0))
 {
  token = pg_strtok(&tok_len);

  if (token == ((void*)0))
   return ((void*)0);
 }

 type = nodeTokenType(token, tok_len);

 switch ((int) type)
 {
  case 135:
   result = parseNodeString();
   token = pg_strtok(&tok_len);
   if (token == ((void*)0) || token[0] != '}')
    elog(ERROR, "did not find '}' at end of input node");
   break;
  case 134:
   {
    List *l = NIL;







    token = pg_strtok(&tok_len);
    if (token == ((void*)0))
     elog(ERROR, "unterminated List structure");
    if (tok_len == 1 && token[0] == 'i')
    {

     for (;;)
     {
      int val;
      char *endptr;

      token = pg_strtok(&tok_len);
      if (token == ((void*)0))
       elog(ERROR, "unterminated List structure");
      if (token[0] == ')')
       break;
      val = (int) strtol(token, &endptr, 10);
      if (endptr != token + tok_len)
       elog(ERROR, "unrecognized integer: \"%.*s\"",
         tok_len, token);
      l = lappend_int(l, val);
     }
    }
    else if (tok_len == 1 && token[0] == 'o')
    {

     for (;;)
     {
      Oid val;
      char *endptr;

      token = pg_strtok(&tok_len);
      if (token == ((void*)0))
       elog(ERROR, "unterminated List structure");
      if (token[0] == ')')
       break;
      val = (Oid) strtoul(token, &endptr, 10);
      if (endptr != token + tok_len)
       elog(ERROR, "unrecognized OID: \"%.*s\"",
         tok_len, token);
      l = lappend_oid(l, val);
     }
    }
    else
    {

     for (;;)
     {

      if (token[0] == ')')
       break;
      l = lappend(l, nodeRead(token, tok_len));
      token = pg_strtok(&tok_len);
      if (token == ((void*)0))
       elog(ERROR, "unterminated List structure");
     }
    }
    result = (Node *) l;
    break;
   }
  case 132:
   elog(ERROR, "unexpected right parenthesis");
   result = ((void*)0);
   break;
  case 133:
   if (tok_len == 0)
   {

    result = ((void*)0);
   }
   else
   {
    elog(ERROR, "unrecognized token: \"%.*s\"", tok_len, token);
    result = ((void*)0);
   }
   break;
  case 129:




   result = (Node *) makeInteger(atoi(token));
   break;
  case 130:
   {
    char *fval = (char *) palloc(tok_len + 1);

    memcpy(fval, token, tok_len);
    fval[tok_len] = '\0';
    result = (Node *) makeFloat(fval);
   }
   break;
  case 128:

   result = (Node *) makeString(debackslash(token + 1, tok_len - 2));
   break;
  case 131:
   {
    char *val = palloc(tok_len);


    memcpy(val, token + 1, tok_len - 1);
    val[tok_len - 1] = '\0';
    result = (Node *) makeBitString(val);
    break;
   }
  default:
   elog(ERROR, "unrecognized node type: %d", (int) type);
   result = ((void*)0);
   break;
 }

 return (void *) result;
}
