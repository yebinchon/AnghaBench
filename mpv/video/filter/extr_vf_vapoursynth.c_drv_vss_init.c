
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {int vs_initialized; } ;


 int MP_FATAL (struct priv*,char*) ;
 int vsscript_init () ;

__attribute__((used)) static int drv_vss_init(struct priv *p)
{
    if (!vsscript_init()) {
        MP_FATAL(p, "Could not initialize VapourSynth scripting.\n");
        return -1;
    }
    p->vs_initialized = 1;
    return 0;
}
