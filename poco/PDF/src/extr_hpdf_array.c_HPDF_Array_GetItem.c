
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int error; int list; } ;
struct TYPE_6__ {int obj_class; } ;
struct TYPE_5__ {void* obj; } ;
typedef int HPDF_UINT16 ;
typedef int HPDF_UINT ;
typedef TYPE_1__* HPDF_Proxy ;
typedef TYPE_2__ HPDF_Obj_Header ;
typedef TYPE_3__* HPDF_Array ;


 int HPDF_ARRAY_ITEM_NOT_FOUND ;
 int HPDF_ARRAY_ITEM_UNEXPECTED_TYPE ;
 void* HPDF_List_ItemAt (int ,int ) ;
 int HPDF_OCLASS_ANY ;
 int HPDF_OCLASS_PROXY ;
 int HPDF_PTRACE (char*) ;
 int HPDF_SetError (int ,int ,int ) ;

void*
HPDF_Array_GetItem (HPDF_Array array,
                     HPDF_UINT index,
                     HPDF_UINT16 obj_class)
{
    void *obj;
    HPDF_Obj_Header *header;

    HPDF_PTRACE((" HPDF_Array_GetItem\n"));

    obj = HPDF_List_ItemAt (array->list, index);

    if (!obj) {
        HPDF_SetError (array->error, HPDF_ARRAY_ITEM_NOT_FOUND, 0);
        return ((void*)0);
    }

    header = (HPDF_Obj_Header *)obj;

    if (header->obj_class == HPDF_OCLASS_PROXY) {
        obj = ((HPDF_Proxy)obj)->obj;
        header = (HPDF_Obj_Header *)obj;
    }

    if ((header->obj_class & HPDF_OCLASS_ANY) != obj_class) {
        HPDF_SetError (array->error, HPDF_ARRAY_ITEM_UNEXPECTED_TYPE, 0);

        return ((void*)0);
    }

    return obj;
}
