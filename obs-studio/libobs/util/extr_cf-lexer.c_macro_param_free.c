
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct macro_param {int tokens; int name; } ;


 int cf_token_clear (int *) ;
 int da_free (int ) ;

__attribute__((used)) static inline void macro_param_free(struct macro_param *param)
{
 cf_token_clear(&param->name);
 da_free(param->tokens);
}
