
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shader_sampler {int values; int states; } ;
struct shader_parser {int cfp; } ;


 int PARSE_SUCCESS ;
 int bfree (char*) ;
 int cf_next_name (int *,char**,char*,char*) ;
 int cf_next_token_copy (int *,char**) ;
 int cf_next_token_should_be (int *,char*,char*,int *) ;
 int da_push_back (int ,char**) ;

__attribute__((used)) static int sp_parse_sampler_state_item(struct shader_parser *sp,
           struct shader_sampler *ss)
{
 int ret;
 char *state = ((void*)0), *value = ((void*)0);

 ret = cf_next_name(&sp->cfp, &state, "state name", ";");
 if (ret != PARSE_SUCCESS)
  goto fail;

 ret = cf_next_token_should_be(&sp->cfp, "=", ";", ((void*)0));
 if (ret != PARSE_SUCCESS)
  goto fail;

 ret = cf_next_token_copy(&sp->cfp, &value);
 if (ret != PARSE_SUCCESS)
  goto fail;

 ret = cf_next_token_should_be(&sp->cfp, ";", ";", ((void*)0));
 if (ret != PARSE_SUCCESS)
  goto fail;

 da_push_back(ss->states, &state);
 da_push_back(ss->values, &value);
 return ret;

fail:
 bfree(state);
 bfree(value);
 return ret;
}
