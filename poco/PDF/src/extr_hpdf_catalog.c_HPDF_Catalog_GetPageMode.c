
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int value; } ;
typedef size_t HPDF_UINT ;
typedef int HPDF_PageMode ;
typedef TYPE_1__* HPDF_Name ;
typedef int HPDF_Catalog ;


 scalar_t__ HPDF_Dict_GetItem (int ,char*,int ) ;
 int HPDF_OCLASS_NAME ;
 scalar_t__* HPDF_PAGE_MODE_NAMES ;
 int HPDF_PAGE_MODE_USE_NONE ;
 scalar_t__ HPDF_StrCmp (int ,scalar_t__) ;

HPDF_PageMode
HPDF_Catalog_GetPageMode (HPDF_Catalog catalog)
{
    HPDF_Name mode;
    HPDF_UINT i = 0;

    mode = (HPDF_Name)HPDF_Dict_GetItem (catalog, "PageMode", HPDF_OCLASS_NAME);
    if (!mode)
        return HPDF_PAGE_MODE_USE_NONE;

    while (HPDF_PAGE_MODE_NAMES[i]) {
        if (HPDF_StrCmp (mode->value, HPDF_PAGE_MODE_NAMES[i]) == 0)
            return (HPDF_PageMode)i;
        i++;
    }

    return HPDF_PAGE_MODE_USE_NONE;
}
