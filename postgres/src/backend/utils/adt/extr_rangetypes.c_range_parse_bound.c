
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* data; } ;
typedef TYPE_1__ StringInfoData ;


 int ERRCODE_INVALID_TEXT_REPRESENTATION ;
 int ERROR ;
 int appendStringInfoChar (TYPE_1__*,char) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail (char*) ;
 int errmsg (char*,char const*) ;
 int initStringInfo (TYPE_1__*) ;

__attribute__((used)) static const char *
range_parse_bound(const char *string, const char *ptr,
      char **bound_str, bool *infinite)
{
 StringInfoData buf;


 if (*ptr == ',' || *ptr == ')' || *ptr == ']')
 {
  *bound_str = ((void*)0);
  *infinite = 1;
 }
 else
 {

  bool inquote = 0;

  initStringInfo(&buf);
  while (inquote || !(*ptr == ',' || *ptr == ')' || *ptr == ']'))
  {
   char ch = *ptr++;

   if (ch == '\0')
    ereport(ERROR,
      (errcode(ERRCODE_INVALID_TEXT_REPRESENTATION),
       errmsg("malformed range literal: \"%s\"",
        string),
       errdetail("Unexpected end of input.")));
   if (ch == '\\')
   {
    if (*ptr == '\0')
     ereport(ERROR,
       (errcode(ERRCODE_INVALID_TEXT_REPRESENTATION),
        errmsg("malformed range literal: \"%s\"",
         string),
        errdetail("Unexpected end of input.")));
    appendStringInfoChar(&buf, *ptr++);
   }
   else if (ch == '"')
   {
    if (!inquote)
     inquote = 1;
    else if (*ptr == '"')
    {

     appendStringInfoChar(&buf, *ptr++);
    }
    else
     inquote = 0;
   }
   else
    appendStringInfoChar(&buf, ch);
  }

  *bound_str = buf.data;
  *infinite = 0;
 }

 return ptr;
}
