
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ep_param {int dummy; } ;
struct effect_parser {int cfp; } ;
struct darray {int dummy; } ;







 int bstrdup (char*) ;
 int cf_adderror_expecting (int *,char*) ;
 int cf_adderror_syntax_error (int *) ;
 int cf_next_valid_token (int *) ;
 int cf_token_is (int *,char*) ;
 int darray_push_back (int,struct darray*,struct ep_param*) ;
 int ep_param_free (struct ep_param*) ;
 int ep_param_init (struct ep_param*,int ,int ,int,int,int) ;
 int ep_parse_param_annotation_var (struct effect_parser*,struct ep_param*) ;

__attribute__((used)) static int ep_parse_annotations(struct effect_parser *ep,
    struct darray *annotations)
{
 if (!cf_token_is(&ep->cfp, "<")) {
  cf_adderror_expecting(&ep->cfp, "<");
  goto error;
 }


 while (1) {
  bool do_break = 0;
  struct ep_param var;

  ep_param_init(&var, bstrdup(""), bstrdup(""), 0, 0,
         0);

  switch (ep_parse_param_annotation_var(ep, &var)) {
  case 128:
   cf_adderror_syntax_error(&ep->cfp);

  case 131:
   ep_param_free(&var);
   continue;

  case 129:
   cf_adderror_syntax_error(&ep->cfp);

  case 132:
   ep_param_free(&var);
   do_break = 1;
   break;

  case 130:
   ep_param_free(&var);
   goto error;
  }

  if (do_break)
   break;

  darray_push_back(sizeof(struct ep_param), annotations, &var);
 }

 if (!cf_token_is(&ep->cfp, ">")) {
  cf_adderror_expecting(&ep->cfp, ">");
  goto error;
 }
 if (!cf_next_valid_token(&ep->cfp))
  goto error;

 return 1;

error:
 return 0;
}
