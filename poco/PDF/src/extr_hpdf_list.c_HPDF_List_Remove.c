
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void** obj; scalar_t__ count; } ;
typedef scalar_t__ HPDF_UINT ;
typedef int HPDF_STATUS ;
typedef TYPE_1__* HPDF_List ;


 int HPDF_ITEM_NOT_FOUND ;
 int HPDF_List_RemoveByIndex (TYPE_1__*,scalar_t__) ;
 int HPDF_OK ;
 int HPDF_PTRACE (char*) ;

HPDF_STATUS
HPDF_List_Remove (HPDF_List list,
                   void *item)
{
    HPDF_UINT i;
    void **obj = list->obj;

    HPDF_PTRACE((" HPDF_List_Remove\n"));

    for (i = 0; i < list->count; i++) {
        if (*obj == item) {
            HPDF_List_RemoveByIndex(list, i);
            return HPDF_OK;
        } else
            obj++;
    }

    return HPDF_ITEM_NOT_FOUND;
}
