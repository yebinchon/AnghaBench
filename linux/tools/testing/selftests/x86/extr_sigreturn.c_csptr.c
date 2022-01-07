
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * gregs; } ;
struct TYPE_5__ {TYPE_1__ uc_mcontext; } ;
typedef TYPE_2__ ucontext_t ;
struct selectors {unsigned short cs; } ;


 size_t REG_CSGSFS ;

__attribute__((used)) static unsigned short *csptr(ucontext_t *ctx)
{
 struct selectors *sels = (void *)&ctx->uc_mcontext.gregs[REG_CSGSFS];
 return &sels->cs;
}
