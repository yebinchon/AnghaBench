
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADVANCE_PARSE_POINTER (char const*,char const*) ;
 int ERRCODE_INVALID_PARAMETER_VALUE ;
 int ERROR ;
 int TEXT_FORMAT_FLAG_MINUS ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 scalar_t__ text_format_parse_digits (char const**,char const*,int*) ;

__attribute__((used)) static const char *
text_format_parse_format(const char *start_ptr, const char *end_ptr,
       int *argpos, int *widthpos,
       int *flags, int *width)
{
 const char *cp = start_ptr;
 int n;


 *argpos = -1;
 *widthpos = -1;
 *flags = 0;
 *width = 0;


 if (text_format_parse_digits(&cp, end_ptr, &n))
 {
  if (*cp != '$')
  {

   *width = n;
   return cp;
  }

  *argpos = n;

  if (n == 0)
   ereport(ERROR,
     (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
      errmsg("format specifies argument 0, but arguments are numbered from 1")));
  ADVANCE_PARSE_POINTER(cp, end_ptr);
 }


 while (*cp == '-')
 {
  *flags |= TEXT_FORMAT_FLAG_MINUS;
  ADVANCE_PARSE_POINTER(cp, end_ptr);
 }

 if (*cp == '*')
 {

  ADVANCE_PARSE_POINTER(cp, end_ptr);
  if (text_format_parse_digits(&cp, end_ptr, &n))
  {

   if (*cp != '$')
    ereport(ERROR,
      (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
       errmsg("width argument position must be ended by \"$\"")));

   *widthpos = n;

   if (n == 0)
    ereport(ERROR,
      (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
       errmsg("format specifies argument 0, but arguments are numbered from 1")));
   ADVANCE_PARSE_POINTER(cp, end_ptr);
  }
  else
   *widthpos = 0;
 }
 else
 {

  if (text_format_parse_digits(&cp, end_ptr, &n))
   *width = n;
 }


 return cp;
}
