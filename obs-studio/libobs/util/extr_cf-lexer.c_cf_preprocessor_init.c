
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cf_preprocessor {int ignore_state; int * ed; int * lex; int tokens; int dependencies; int sys_include_dirs; int defines; } ;


 int da_init (int ) ;

void cf_preprocessor_init(struct cf_preprocessor *pp)
{
 da_init(pp->defines);
 da_init(pp->sys_include_dirs);
 da_init(pp->dependencies);
 da_init(pp->tokens);
 pp->lex = ((void*)0);
 pp->ed = ((void*)0);
 pp->ignore_state = 0;
}
