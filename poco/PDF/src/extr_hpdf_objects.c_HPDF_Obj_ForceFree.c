
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int obj_class; scalar_t__ obj_id; } ;
typedef int HPDF_UINT ;
typedef TYPE_1__ HPDF_Obj_Header ;
typedef int HPDF_MMgr ;


 int HPDF_Array_Free (void*) ;
 int HPDF_Binary_Free (void*) ;
 int HPDF_Dict_Free (void*) ;
 int HPDF_FreeMem (int ,void*) ;
 int HPDF_OCLASS_ANY ;




 int HPDF_PTRACE (char*) ;
 int HPDF_String_Free (void*) ;

void
HPDF_Obj_ForceFree (HPDF_MMgr mmgr,
                     void *obj)
{
    HPDF_Obj_Header *header;

    HPDF_PTRACE((" HPDF_Obj_ForceFree\n"));

    if (!obj)
        return;

    header = (HPDF_Obj_Header *)obj;

    HPDF_PTRACE((" HPDF_Obj_ForceFree obj=0x%08X obj_id=0x%08X "
                    "obj_class=0x%08X\n",
                    (HPDF_UINT)obj, (HPDF_UINT)(header->obj_id),
                    (HPDF_UINT)(header->obj_class)));

    switch (header->obj_class & HPDF_OCLASS_ANY) {
        case 128:
            HPDF_String_Free (obj);
            break;
        case 130:
            HPDF_Binary_Free (obj);
            break;
        case 131:
            HPDF_Array_Free (obj);
            break;
        case 129:
            HPDF_Dict_Free (obj);
            break;
        default:
            HPDF_FreeMem (mmgr, obj);
    }
}
