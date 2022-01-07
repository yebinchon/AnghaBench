
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ attr; int error; } ;
struct TYPE_10__ {TYPE_2__* parent; } ;
typedef int HPDF_STATUS ;
typedef TYPE_1__* HPDF_PageAttr ;
typedef TYPE_2__* HPDF_Page ;
typedef scalar_t__ HPDF_Array ;


 int HPDF_Array_Insert (scalar_t__,TYPE_2__*,TYPE_2__*) ;
 int HPDF_Dict_Add (TYPE_2__*,char*,TYPE_2__*) ;
 scalar_t__ HPDF_Dict_GetItem (TYPE_2__*,char*,int ) ;
 int HPDF_INVALID_PARAMETER ;
 int HPDF_OCLASS_ARRAY ;
 int HPDF_OCLASS_DICT ;
 int HPDF_OK ;
 int HPDF_PAGES_MISSING_KIDS_ENTRY ;
 int HPDF_PAGE_CANNOT_SET_PARENT ;
 int HPDF_PTRACE (char*) ;
 int HPDF_SetError (int ,int ,int ) ;

HPDF_STATUS
HPDF_Page_InsertBefore (HPDF_Page page,
                         HPDF_Page target)
{
    HPDF_Page parent;
    HPDF_Array kids;
    HPDF_STATUS ret;
    HPDF_PageAttr attr;

    HPDF_PTRACE((" HPDF_Page_InsertBefore\n"));

    if (!target)
        return HPDF_INVALID_PARAMETER;

    attr = (HPDF_PageAttr )target->attr;
    parent = attr->parent;

    if (!parent)
        return HPDF_PAGE_CANNOT_SET_PARENT;

    if (HPDF_Dict_GetItem (page, "Parent", HPDF_OCLASS_DICT))
        return HPDF_SetError (parent->error, HPDF_PAGE_CANNOT_SET_PARENT, 0);

    if ((ret = HPDF_Dict_Add (page, "Parent", parent)) != HPDF_OK)
        return ret;

    kids = (HPDF_Array )HPDF_Dict_GetItem (parent, "Kids", HPDF_OCLASS_ARRAY);
    if (!kids)
        return HPDF_SetError (parent->error, HPDF_PAGES_MISSING_KIDS_ENTRY, 0);

    attr = (HPDF_PageAttr)page->attr;
    attr->parent = parent;

    return HPDF_Array_Insert (kids, target, page);
}
