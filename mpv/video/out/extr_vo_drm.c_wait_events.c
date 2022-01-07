
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vo {struct priv* priv; } ;
struct priv {int vt_switcher; scalar_t__ vt_switcher_active; } ;
typedef int int64_t ;


 int MPCLAMP (int,int ,int) ;
 int mp_time_us () ;
 int vo_wait_default (struct vo*,int) ;
 int vt_switcher_poll (int *,int) ;

__attribute__((used)) static void wait_events(struct vo *vo, int64_t until_time_us)
{
    struct priv *p = vo->priv;
    if (p->vt_switcher_active) {
        int64_t wait_us = until_time_us - mp_time_us();
        int timeout_ms = MPCLAMP((wait_us + 500) / 1000, 0, 10000);
        vt_switcher_poll(&p->vt_switcher, timeout_ms);
    } else {
        vo_wait_default(vo, until_time_us);
    }
}
