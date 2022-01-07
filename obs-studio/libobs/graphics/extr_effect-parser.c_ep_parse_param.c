
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ep_param {int dummy; } ;
struct effect_parser {int params; int cfp; } ;


 scalar_t__ cf_token_is (int *,char*) ;
 int da_push_back (int ,struct ep_param*) ;
 int ep_param_free (struct ep_param*) ;
 int ep_param_init (struct ep_param*,char*,char*,int,int,int) ;
 int ep_parse_param_annotations (struct effect_parser*,struct ep_param*) ;
 int ep_parse_param_array (struct effect_parser*,struct ep_param*) ;
 int ep_parse_param_assign (struct effect_parser*,struct ep_param*) ;

__attribute__((used)) static void ep_parse_param(struct effect_parser *ep, char *type, char *name,
      bool is_property, bool is_const, bool is_uniform)
{
 struct ep_param param;
 ep_param_init(&param, type, name, is_property, is_const, is_uniform);

 if (cf_token_is(&ep->cfp, ";"))
  goto complete;
 if (cf_token_is(&ep->cfp, "[") && !ep_parse_param_array(ep, &param))
  goto error;
 if (cf_token_is(&ep->cfp, "<") &&
     !ep_parse_param_annotations(ep, &param))
  goto error;
 if (cf_token_is(&ep->cfp, "=") && !ep_parse_param_assign(ep, &param))
  goto error;



 if (!cf_token_is(&ep->cfp, ";"))
  goto error;

complete:
 da_push_back(ep->params, &param);
 return;

error:
 ep_param_free(&param);
}
