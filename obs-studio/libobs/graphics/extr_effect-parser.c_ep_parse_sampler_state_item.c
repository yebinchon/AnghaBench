
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct ep_sampler {int values; int states; } ;
struct TYPE_8__ {TYPE_2__* cur_token; } ;
struct effect_parser {TYPE_3__ cfp; } ;
struct dstr {char* array; scalar_t__ len; int member_0; } ;
struct TYPE_6__ {char* array; int len; } ;
struct TYPE_7__ {TYPE_1__ str; } ;


 int PARSE_EOF ;
 int PARSE_SUCCESS ;
 int bfree (char*) ;
 int cf_next_name (TYPE_3__*,char**,char*,char*) ;
 int cf_next_token_should_be (TYPE_3__*,char*,char*,int *) ;
 int cf_next_valid_token (TYPE_3__*) ;
 int da_push_back (int ,char**) ;
 int dstr_free (struct dstr*) ;
 int dstr_ncat (struct dstr*,char const*,int ) ;

__attribute__((used)) static int ep_parse_sampler_state_item(struct effect_parser *ep,
           struct ep_sampler *eps)
{
 int ret;
 char *state = ((void*)0);
 struct dstr value = {0};

 ret = cf_next_name(&ep->cfp, &state, "state name", ";");
 if (ret != PARSE_SUCCESS)
  goto fail;

 ret = cf_next_token_should_be(&ep->cfp, "=", ";", ((void*)0));
 if (ret != PARSE_SUCCESS)
  goto fail;

 for (;;) {
  const char *cur_str;

  if (!cf_next_valid_token(&ep->cfp))
   return PARSE_EOF;

  cur_str = ep->cfp.cur_token->str.array;
  if (*cur_str == ';')
   break;

  dstr_ncat(&value, cur_str, ep->cfp.cur_token->str.len);
 }

 if (value.len) {
  da_push_back(eps->states, &state);
  da_push_back(eps->values, &value.array);
 }

 return ret;

fail:
 bfree(state);
 dstr_free(&value);
 return ret;
}
