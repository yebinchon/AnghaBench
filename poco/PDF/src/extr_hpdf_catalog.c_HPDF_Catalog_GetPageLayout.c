
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int value; } ;
typedef size_t HPDF_UINT ;
typedef int HPDF_PageLayout ;
typedef TYPE_1__* HPDF_Name ;
typedef int HPDF_Catalog ;


 scalar_t__ HPDF_Dict_GetItem (int ,char*,int ) ;
 int HPDF_OCLASS_NAME ;
 int HPDF_PAGE_LAYOUT_EOF ;
 scalar_t__* HPDF_PAGE_LAYOUT_NAMES ;
 scalar_t__ HPDF_StrCmp (int ,scalar_t__) ;

HPDF_PageLayout
HPDF_Catalog_GetPageLayout (HPDF_Catalog catalog)
{
    HPDF_Name layout;
    HPDF_UINT i = 0;

    layout = (HPDF_Name)HPDF_Dict_GetItem (catalog, "PageLayout",
            HPDF_OCLASS_NAME);
    if (!layout)
        return HPDF_PAGE_LAYOUT_EOF;

    while (HPDF_PAGE_LAYOUT_NAMES[i]) {
        if (HPDF_StrCmp (layout->value, HPDF_PAGE_LAYOUT_NAMES[i]) == 0)
            return (HPDF_PageLayout)i;
        i++;
    }

    return HPDF_PAGE_LAYOUT_EOF;
}
