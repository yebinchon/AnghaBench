
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int count; void** obj; int block_siz; int mmgr; int error; } ;
typedef int HPDF_UINT ;
typedef int HPDF_STATUS ;
typedef TYPE_1__* HPDF_List ;
typedef int HPDF_BYTE ;


 int HPDF_Error_GetCode (int ) ;
 int HPDF_FreeMem (int ,void**) ;
 scalar_t__ HPDF_GetMem (int ,int) ;
 int HPDF_INVALID_PARAMETER ;
 int HPDF_MemCpy (int *,int *,int) ;
 int HPDF_OK ;
 int HPDF_PTRACE (char*) ;

__attribute__((used)) static HPDF_STATUS
Resize (HPDF_List list,
         HPDF_UINT count)
{
    void **new_obj;

    HPDF_PTRACE((" HPDF_List_Resize\n"));

    if (list->count >= count) {
        if (list->count == count)
            return HPDF_OK;
        else
            return HPDF_INVALID_PARAMETER;
    }

    new_obj = (void **)HPDF_GetMem (list->mmgr, count * sizeof(void *));

    if (!new_obj)
        return HPDF_Error_GetCode (list->error);

    if (list->obj)
        HPDF_MemCpy ((HPDF_BYTE *)new_obj, (HPDF_BYTE *)list->obj,
                list->block_siz * sizeof(void *));

    list->block_siz = count;
    if (list->obj)
        HPDF_FreeMem (list->mmgr, list->obj);
    list->obj = new_obj;

    return HPDF_OK;
}
