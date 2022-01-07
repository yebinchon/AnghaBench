
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int obj_class; } ;
struct TYPE_5__ {void* obj; TYPE_3__ header; } ;
typedef int HPDF_Proxy_Rec ;
typedef TYPE_1__* HPDF_Proxy ;
typedef int HPDF_Obj_Header ;
typedef int HPDF_MMgr ;


 TYPE_1__* HPDF_GetMem (int ,int) ;
 int HPDF_MemSet (TYPE_3__*,int ,int) ;
 int HPDF_OCLASS_PROXY ;
 int HPDF_PTRACE (char*) ;

HPDF_Proxy
HPDF_Proxy_New (HPDF_MMgr mmgr,
                 void *obj)
{
    HPDF_Proxy p = HPDF_GetMem (mmgr, sizeof(HPDF_Proxy_Rec));

    HPDF_PTRACE((" HPDF_Proxy_New\n"));

    if (p) {
        HPDF_MemSet (&p->header, 0, sizeof(HPDF_Obj_Header));
        p->header.obj_class = HPDF_OCLASS_PROXY;
        p->obj = obj;
    }

    return p;
}
