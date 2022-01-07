
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct effect_parser {int dummy; } ;


 int PARSE_CONTINUE ;
 int PARSE_EOF ;
 int ep_check_for_keyword (struct effect_parser*,char*,int*) ;

__attribute__((used)) static bool ep_get_var_specifiers(struct effect_parser *ep, bool *is_property,
      bool *is_const, bool *is_uniform)
{
 while (1) {
  int code;
  code = ep_check_for_keyword(ep, "property", is_property);
  if (code == PARSE_EOF)
   return 0;
  else if (code == PARSE_CONTINUE)
   continue;

  code = ep_check_for_keyword(ep, "const", is_const);
  if (code == PARSE_EOF)
   return 0;
  else if (code == PARSE_CONTINUE)
   continue;

  code = ep_check_for_keyword(ep, "uniform", is_uniform);
  if (code == PARSE_EOF)
   return 0;
  else if (code == PARSE_CONTINUE)
   continue;

  break;
 }

 return 1;
}
