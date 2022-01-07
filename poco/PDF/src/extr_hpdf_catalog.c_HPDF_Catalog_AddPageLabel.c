
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_17__ {TYPE_1__* error; int mmgr; } ;
struct TYPE_16__ {int error_no; } ;
typedef int HPDF_UINT ;
typedef int HPDF_STATUS ;
typedef TYPE_2__* HPDF_Dict ;
typedef TYPE_2__* HPDF_Catalog ;
typedef TYPE_2__* HPDF_Array ;


 int HPDF_Array_Add (TYPE_2__*,TYPE_2__*) ;
 int HPDF_Array_AddNumber (TYPE_2__*,int ) ;
 TYPE_2__* HPDF_Array_New (int ) ;
 int HPDF_Dict_Add (TYPE_2__*,char*,TYPE_2__*) ;
 TYPE_2__* HPDF_Dict_GetItem (TYPE_2__*,char*,int ) ;
 TYPE_2__* HPDF_Dict_New (int ) ;
 int HPDF_OCLASS_ARRAY ;
 int HPDF_OCLASS_DICT ;
 int HPDF_OK ;
 int HPDF_PTRACE (char*) ;

HPDF_STATUS
HPDF_Catalog_AddPageLabel (HPDF_Catalog catalog,
                            HPDF_UINT page_num,
                            HPDF_Dict page_label)
{
    HPDF_STATUS ret;
    HPDF_Array nums;
    HPDF_Dict labels = HPDF_Dict_GetItem (catalog, "PageLabels",
        HPDF_OCLASS_DICT);

    HPDF_PTRACE ((" HPDF_Catalog_AddPageLabel\n"));

    if (!labels) {
        labels = HPDF_Dict_New (catalog->mmgr);

        if (!labels)
            return catalog->error->error_no;

        if ((ret = HPDF_Dict_Add (catalog, "PageLabels", labels)) != HPDF_OK)
            return ret;
    }

    nums = HPDF_Dict_GetItem (labels, "Nums", HPDF_OCLASS_ARRAY);

    if (!nums) {
        nums = HPDF_Array_New (catalog->mmgr);

        if (!nums)
            return catalog->error->error_no;

        if ((ret = HPDF_Dict_Add (labels, "Nums", nums)) != HPDF_OK)
            return ret;
    }

    if ((ret = HPDF_Array_AddNumber (nums, page_num)) != HPDF_OK)
        return ret;

    return HPDF_Array_Add (nums, page_label);
}
