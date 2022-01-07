
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {int vs_initialized; } ;


 int vsscript_finalize () ;

__attribute__((used)) static void drv_vss_uninit(struct priv *p)
{
    if (p->vs_initialized)
        vsscript_finalize();
    p->vs_initialized = 0;
}
