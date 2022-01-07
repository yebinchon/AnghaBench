
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct MPContext {int dispatch; } ;


 int mp_dispatch_unlock (int ) ;

void mp_core_unlock(struct MPContext *mpctx)
{
    mp_dispatch_unlock(mpctx->dispatch);
}
