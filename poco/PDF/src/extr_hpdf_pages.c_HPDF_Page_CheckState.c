
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int obj_class; } ;
struct TYPE_7__ {int error; scalar_t__ attr; TYPE_1__ header; } ;
struct TYPE_6__ {int gmode; } ;
typedef int HPDF_UINT ;
typedef int HPDF_STATUS ;
typedef TYPE_2__* HPDF_PageAttr ;
typedef TYPE_3__* HPDF_Page ;


 int HPDF_INVALID_OBJECT ;
 int HPDF_INVALID_PAGE ;
 int HPDF_OCLASS_DICT ;
 int HPDF_OK ;
 int HPDF_OSUBCLASS_PAGE ;
 int HPDF_PAGE_INVALID_GMODE ;
 int HPDF_RaiseError (int ,int ,int ) ;

HPDF_STATUS
HPDF_Page_CheckState (HPDF_Page page,
                       HPDF_UINT mode)
{
    if (!page)
        return HPDF_INVALID_OBJECT;

    if (page->header.obj_class != (HPDF_OSUBCLASS_PAGE | HPDF_OCLASS_DICT))
        return HPDF_INVALID_PAGE;

    if (!(((HPDF_PageAttr)page->attr)->gmode & mode))
        return HPDF_RaiseError (page->error, HPDF_PAGE_INVALID_GMODE, 0);

    return HPDF_OK;
}
