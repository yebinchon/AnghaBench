
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t count; void** obj; } ;
typedef size_t HPDF_UINT ;
typedef TYPE_1__* HPDF_List ;


 int HPDF_PTRACE (char*) ;

void*
HPDF_List_ItemAt (HPDF_List list,
                   HPDF_UINT index)
{
    HPDF_PTRACE((" HPDF_List_ItemAt\n"));

    return (list->count <= index) ? ((void*)0) : list->obj[index];
}
