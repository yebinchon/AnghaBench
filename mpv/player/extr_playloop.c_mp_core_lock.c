
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct MPContext {int dispatch; } ;


 int mp_dispatch_lock (int ) ;

void mp_core_lock(struct MPContext *mpctx)
{
    mp_dispatch_lock(mpctx->dispatch);
}
