
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERRCODE_SYNTAX_ERROR ;
 int ERROR ;
 char RANGE_LB_INC ;
 char RANGE_UB_INC ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errhint (char*) ;
 int errmsg (char*) ;

__attribute__((used)) static char
range_parse_flags(const char *flags_str)
{
 char flags = 0;

 if (flags_str[0] == '\0' ||
  flags_str[1] == '\0' ||
  flags_str[2] != '\0')
  ereport(ERROR,
    (errcode(ERRCODE_SYNTAX_ERROR),
     errmsg("invalid range bound flags"),
     errhint("Valid values are \"[]\", \"[)\", \"(]\", and \"()\".")));

 switch (flags_str[0])
 {
  case '[':
   flags |= RANGE_LB_INC;
   break;
  case '(':
   break;
  default:
   ereport(ERROR,
     (errcode(ERRCODE_SYNTAX_ERROR),
      errmsg("invalid range bound flags"),
      errhint("Valid values are \"[]\", \"[)\", \"(]\", and \"()\".")));
 }

 switch (flags_str[1])
 {
  case ']':
   flags |= RANGE_UB_INC;
   break;
  case ')':
   break;
  default:
   ereport(ERROR,
     (errcode(ERRCODE_SYNTAX_ERROR),
      errmsg("invalid range bound flags"),
      errhint("Valid values are \"[]\", \"[)\", \"(]\", and \"()\".")));
 }

 return flags;
}
