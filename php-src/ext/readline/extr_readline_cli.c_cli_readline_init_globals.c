
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * prompt_str; int * prompt; int * pager; } ;
typedef TYPE_1__ zend_cli_readline_globals ;



__attribute__((used)) static void cli_readline_init_globals(zend_cli_readline_globals *rg)
{
 rg->pager = ((void*)0);
 rg->prompt = ((void*)0);
 rg->prompt_str = ((void*)0);
}
