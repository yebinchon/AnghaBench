
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cf_def {int macro; int tokens; int params; int name; } ;


 int cf_token_clear (int *) ;
 int da_init (int ) ;

__attribute__((used)) static inline void cf_def_init(struct cf_def *cfd)
{
 cf_token_clear(&cfd->name);
 da_init(cfd->params);
 da_init(cfd->tokens);
 cfd->macro = 0;
}
