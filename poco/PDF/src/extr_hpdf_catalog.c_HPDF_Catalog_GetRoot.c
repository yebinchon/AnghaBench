
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int error; } ;
struct TYPE_9__ {int obj_class; } ;
struct TYPE_10__ {TYPE_1__ header; } ;
typedef TYPE_2__* HPDF_Pages ;
typedef TYPE_2__* HPDF_Dict ;
typedef TYPE_4__* HPDF_Catalog ;


 TYPE_2__* HPDF_Dict_GetItem (TYPE_4__*,char*,int) ;
 int HPDF_OCLASS_DICT ;
 int HPDF_OSUBCLASS_PAGES ;
 int HPDF_PAGE_CANNOT_GET_ROOT_PAGES ;
 int HPDF_SetError (int ,int ,int ) ;

HPDF_Pages
HPDF_Catalog_GetRoot (HPDF_Catalog catalog)
{
    HPDF_Dict pages;

    if (!catalog)
        return ((void*)0);

    pages = HPDF_Dict_GetItem (catalog, "Pages", HPDF_OCLASS_DICT);
    if (!pages || pages->header.obj_class != (HPDF_OSUBCLASS_PAGES |
                HPDF_OCLASS_DICT))
        HPDF_SetError (catalog->error, HPDF_PAGE_CANNOT_GET_ROOT_PAGES, 0);

    return pages;
}
