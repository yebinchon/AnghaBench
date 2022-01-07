
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {int se; int vscore; int vsapi; } ;


 scalar_t__ vsscript_createScript (int *) ;
 int vsscript_getCore (int ) ;
 int vsscript_getVSApi () ;

__attribute__((used)) static int drv_vss_load_core(struct priv *p)
{


    if (vsscript_createScript(&p->se))
        return -1;
    p->vsapi = vsscript_getVSApi();
    p->vscore = vsscript_getCore(p->se);
    return 0;
}
