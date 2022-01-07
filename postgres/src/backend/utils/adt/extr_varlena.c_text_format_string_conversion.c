
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int FmgrInfo ;
typedef int Datum ;


 int ERRCODE_NULL_VALUE_NOT_ALLOWED ;
 int ERROR ;
 char* OutputFunctionCall (int *,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int pfree (char*) ;
 char* quote_identifier (char*) ;
 char* quote_literal_cstr (char*) ;
 int text_format_append_string (int ,char*,int,int) ;

__attribute__((used)) static void
text_format_string_conversion(StringInfo buf, char conversion,
         FmgrInfo *typOutputInfo,
         Datum value, bool isNull,
         int flags, int width)
{
 char *str;


 if (isNull)
 {
  if (conversion == 's')
   text_format_append_string(buf, "", flags, width);
  else if (conversion == 'L')
   text_format_append_string(buf, "NULL", flags, width);
  else if (conversion == 'I')
   ereport(ERROR,
     (errcode(ERRCODE_NULL_VALUE_NOT_ALLOWED),
      errmsg("null values cannot be formatted as an SQL identifier")));
  return;
 }


 str = OutputFunctionCall(typOutputInfo, value);


 if (conversion == 'I')
 {

  text_format_append_string(buf, quote_identifier(str), flags, width);
 }
 else if (conversion == 'L')
 {
  char *qstr = quote_literal_cstr(str);

  text_format_append_string(buf, qstr, flags, width);

  pfree(qstr);
 }
 else
  text_format_append_string(buf, str, flags, width);


 pfree(str);
}
