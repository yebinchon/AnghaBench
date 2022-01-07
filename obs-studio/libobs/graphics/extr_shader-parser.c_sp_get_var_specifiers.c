
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shader_parser {int dummy; } ;


 int PARSE_CONTINUE ;
 int PARSE_EOF ;
 int sp_check_for_keyword (struct shader_parser*,char*,int*) ;

__attribute__((used)) static bool sp_get_var_specifiers(struct shader_parser *sp, bool *is_const,
      bool *is_uniform)
{
 while (1) {
  int code = sp_check_for_keyword(sp, "const", is_const);
  if (code == PARSE_EOF)
   return 0;
  else if (code == PARSE_CONTINUE)
   continue;

  code = sp_check_for_keyword(sp, "uniform", is_uniform);
  if (code == PARSE_EOF)
   return 0;
  else if (code == PARSE_CONTINUE)
   continue;

  break;
 }

 return 1;
}
