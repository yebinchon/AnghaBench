
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HPDF_STATUS ;
typedef scalar_t__ HPDF_PageLayout ;
typedef size_t HPDF_INT ;
typedef int HPDF_Catalog ;


 int HPDF_Dict_AddName (int ,char*,int ) ;
 int * HPDF_PAGE_LAYOUT_NAMES ;

HPDF_STATUS
HPDF_Catalog_SetPageLayout (HPDF_Catalog catalog,
                             HPDF_PageLayout layout)
{
    return HPDF_Dict_AddName (catalog, "PageLayout",
                    HPDF_PAGE_LAYOUT_NAMES[(HPDF_INT)layout]);
}
