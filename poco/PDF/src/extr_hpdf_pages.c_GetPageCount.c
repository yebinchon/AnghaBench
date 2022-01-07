
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* list; } ;
struct TYPE_6__ {int obj_class; } ;
struct TYPE_5__ {scalar_t__ count; } ;
typedef scalar_t__ HPDF_UINT ;
typedef TYPE_2__ HPDF_Obj_Header ;
typedef int HPDF_Dict ;
typedef TYPE_3__* HPDF_Array ;


 void* HPDF_Array_GetItem (TYPE_3__*,scalar_t__,int) ;
 int HPDF_Dict_GetItem (int ,char*,int ) ;
 int HPDF_OCLASS_ARRAY ;
 int HPDF_OCLASS_DICT ;
 int HPDF_OSUBCLASS_PAGE ;
 int HPDF_OSUBCLASS_PAGES ;
 int HPDF_PTRACE (char*) ;

__attribute__((used)) static HPDF_UINT
GetPageCount (HPDF_Dict pages)
{
    HPDF_UINT i;
    HPDF_UINT count = 0;
    HPDF_Array kids = (HPDF_Array)HPDF_Dict_GetItem (pages, "Kids",
            HPDF_OCLASS_ARRAY);

    HPDF_PTRACE((" GetPageCount\n"));

    if (!kids)
        return 0;

    for (i = 0; i < kids->list->count; i++) {
        void *obj = HPDF_Array_GetItem (kids, i, HPDF_OCLASS_DICT);
        HPDF_Obj_Header *header = (HPDF_Obj_Header *)obj;

        if (header->obj_class == (HPDF_OCLASS_DICT | HPDF_OSUBCLASS_PAGES))
            count += GetPageCount ((HPDF_Dict)obj);
        else if (header->obj_class == (HPDF_OCLASS_DICT | HPDF_OSUBCLASS_PAGE))
            count += 1;
    }

    return count;
}
