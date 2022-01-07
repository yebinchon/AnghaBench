
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ep_param {int dummy; } ;
struct effect_parser {int cfp; } ;


 scalar_t__ PARSE_SUCCESS ;
 int cf_next_valid_token (int *) ;
 scalar_t__ ep_parse_param_assignment_val (struct effect_parser*,struct ep_param*) ;

__attribute__((used)) static inline bool ep_parse_param_assign(struct effect_parser *ep,
      struct ep_param *param)
{
 if (ep_parse_param_assignment_val(ep, param) != PARSE_SUCCESS)
  return 0;

 if (!cf_next_valid_token(&ep->cfp))
  return 0;

 return 1;
}
