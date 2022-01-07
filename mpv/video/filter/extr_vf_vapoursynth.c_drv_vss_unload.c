
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {int * vscore; int * vsapi; int * se; } ;


 int vsscript_freeScript (int *) ;

__attribute__((used)) static void drv_vss_unload(struct priv *p)
{
    if (p->se)
        vsscript_freeScript(p->se);
    p->se = ((void*)0);
    p->vsapi = ((void*)0);
    p->vscore = ((void*)0);
}
