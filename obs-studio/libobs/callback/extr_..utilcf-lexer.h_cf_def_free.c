
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cf_def {int tokens; int params; int name; } ;


 int cf_token_clear (int *) ;
 int da_free (int ) ;

__attribute__((used)) static inline void cf_def_free(struct cf_def *cfd)
{
 cf_token_clear(&cfd->name);
 da_free(cfd->params);
 da_free(cfd->tokens);
}
