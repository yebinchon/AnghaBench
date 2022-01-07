
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shader_var {int vars; int name; } ;
struct shader_struct {int vars; int name; } ;
struct shader_parser {int structs; int cfp; } ;





 scalar_t__ PARSE_SUCCESS ;


 int cf_adderror_syntax_error (int *) ;
 scalar_t__ cf_next_name (int *,int *,char*,char*) ;
 scalar_t__ cf_next_token_should_be (int *,char*,char*,int *) ;
 int da_push_back (int ,struct shader_var*) ;
 int shader_struct_free (struct shader_var*) ;
 int shader_struct_init (struct shader_var*) ;
 int shader_var_free (struct shader_var*) ;
 int shader_var_init (struct shader_var*) ;
 int sp_parse_struct_var (struct shader_parser*,struct shader_var*) ;

__attribute__((used)) static void sp_parse_struct(struct shader_parser *sp)
{
 struct shader_struct ss;
 shader_struct_init(&ss);

 if (cf_next_name(&sp->cfp, &ss.name, "name", ";") != PARSE_SUCCESS)
  goto error;
 if (cf_next_token_should_be(&sp->cfp, "{", ";", ((void*)0)) != PARSE_SUCCESS)
  goto error;


 while (1) {
  bool do_break = 0;
  struct shader_var var;

  shader_var_init(&var);

  switch (sp_parse_struct_var(sp, &var)) {

  case 128:
   cf_adderror_syntax_error(&sp->cfp);

  case 131:
   shader_var_free(&var);
   continue;

  case 129:
   cf_adderror_syntax_error(&sp->cfp);

  case 132:
   shader_var_free(&var);
   do_break = 1;
   break;

  case 130:
   shader_var_free(&var);
   goto error;
  }

  if (do_break)
   break;

  da_push_back(ss.vars, &var);
 }

 if (cf_next_token_should_be(&sp->cfp, ";", ((void*)0), ((void*)0)) != PARSE_SUCCESS)
  goto error;

 da_push_back(sp->structs, &ss);
 return;

error:
 shader_struct_free(&ss);
}
