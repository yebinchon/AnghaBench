
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int obj_id; } ;
typedef TYPE_1__ HPDF_Obj_Header ;
typedef int HPDF_MMgr ;


 int HPDF_OTYPE_INDIRECT ;
 int HPDF_Obj_ForceFree (int ,void*) ;
 int HPDF_PTRACE (char*) ;

void
HPDF_Obj_Free (HPDF_MMgr mmgr,
                void *obj)
{
    HPDF_Obj_Header *header;

    HPDF_PTRACE((" HPDF_Obj_Free\n"));

    if (!obj)
        return;

    header = (HPDF_Obj_Header *)obj;

    if (!(header->obj_id & HPDF_OTYPE_INDIRECT))
        HPDF_Obj_ForceFree (mmgr, obj);
}
