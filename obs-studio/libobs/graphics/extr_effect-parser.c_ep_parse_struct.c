
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ep_var {int vars; int name; } ;
struct ep_struct {int vars; int name; } ;
struct effect_parser {int structs; int cfp; } ;





 scalar_t__ PARSE_SUCCESS ;


 int cf_adderror_syntax_error (int *) ;
 scalar_t__ cf_next_name (int *,int *,char*,char*) ;
 scalar_t__ cf_next_token_should_be (int *,char*,char*,int *) ;
 int da_push_back (int ,struct ep_var*) ;
 int ep_parse_struct_var (struct effect_parser*,struct ep_var*) ;
 int ep_struct_free (struct ep_var*) ;
 int ep_struct_init (struct ep_var*) ;
 int ep_var_free (struct ep_var*) ;
 int ep_var_init (struct ep_var*) ;

__attribute__((used)) static void ep_parse_struct(struct effect_parser *ep)
{
 struct ep_struct eps;
 ep_struct_init(&eps);

 if (cf_next_name(&ep->cfp, &eps.name, "name", ";") != PARSE_SUCCESS)
  goto error;
 if (cf_next_token_should_be(&ep->cfp, "{", ";", ((void*)0)) != PARSE_SUCCESS)
  goto error;


 while (1) {
  bool do_break = 0;
  struct ep_var var;

  ep_var_init(&var);

  switch (ep_parse_struct_var(ep, &var)) {

  case 128:
   cf_adderror_syntax_error(&ep->cfp);

  case 131:
   ep_var_free(&var);
   continue;

  case 129:
   cf_adderror_syntax_error(&ep->cfp);

  case 132:
   ep_var_free(&var);
   do_break = 1;
   break;

  case 130:
   ep_var_free(&var);
   goto error;
  }

  if (do_break)
   break;

  da_push_back(eps.vars, &var);
 }

 if (cf_next_token_should_be(&ep->cfp, ";", ((void*)0), ((void*)0)) != PARSE_SUCCESS)
  goto error;

 da_push_back(ep->structs, &eps);
 return;

error:
 ep_struct_free(&eps);
}
