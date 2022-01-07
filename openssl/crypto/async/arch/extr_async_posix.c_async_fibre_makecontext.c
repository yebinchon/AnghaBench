
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * ss_sp; int ss_size; } ;
struct TYPE_8__ {TYPE_1__ uc_stack; int * uc_link; } ;
struct TYPE_7__ {TYPE_3__ fibre; scalar_t__ env_init; } ;
typedef TYPE_2__ async_fibre ;


 int * OPENSSL_malloc (int ) ;
 int STACKSIZE ;
 int async_start_func ;
 scalar_t__ getcontext (TYPE_3__*) ;
 int makecontext (TYPE_3__*,int ,int ) ;

int async_fibre_makecontext(async_fibre *fibre)
{
    fibre->env_init = 0;
    if (getcontext(&fibre->fibre) == 0) {
        fibre->fibre.uc_stack.ss_sp = OPENSSL_malloc(STACKSIZE);
        if (fibre->fibre.uc_stack.ss_sp != ((void*)0)) {
            fibre->fibre.uc_stack.ss_size = STACKSIZE;
            fibre->fibre.uc_link = ((void*)0);
            makecontext(&fibre->fibre, async_start_func, 0);
            return 1;
        }
    } else {
        fibre->fibre.uc_stack.ss_sp = ((void*)0);
    }
    return 0;
}
