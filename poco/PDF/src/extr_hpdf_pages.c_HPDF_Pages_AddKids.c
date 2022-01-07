
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {TYPE_2__* parent; } ;
struct TYPE_11__ {int obj_class; } ;
struct TYPE_12__ {int attr; TYPE_1__ header; int error; } ;
typedef int HPDF_STATUS ;
typedef TYPE_2__* HPDF_Pages ;
typedef TYPE_3__* HPDF_PageAttr ;
typedef TYPE_2__* HPDF_Dict ;
typedef scalar_t__ HPDF_Array ;


 int HPDF_Array_Add (scalar_t__,TYPE_2__*) ;
 int HPDF_Dict_Add (TYPE_2__*,char*,TYPE_2__*) ;
 scalar_t__ HPDF_Dict_GetItem (TYPE_2__*,char*,int) ;
 int HPDF_OCLASS_ARRAY ;
 int HPDF_OCLASS_DICT ;
 int HPDF_OK ;
 int HPDF_OSUBCLASS_PAGE ;
 int HPDF_PAGES_MISSING_KIDS_ENTRY ;
 int HPDF_PAGE_CANNOT_SET_PARENT ;
 int HPDF_PTRACE (char*) ;
 int HPDF_SetError (int ,int ,int ) ;

HPDF_STATUS
HPDF_Pages_AddKids (HPDF_Pages parent,
                     HPDF_Dict kid)
{
    HPDF_Array kids;
    HPDF_STATUS ret;

    HPDF_PTRACE((" HPDF_Pages_AddKids\n"));

    if (HPDF_Dict_GetItem (kid, "Parent", HPDF_OCLASS_DICT))
        return HPDF_SetError (parent->error, HPDF_PAGE_CANNOT_SET_PARENT, 0);

    if ((ret = HPDF_Dict_Add (kid, "Parent", parent)) != HPDF_OK)
        return ret;

    kids = (HPDF_Array )HPDF_Dict_GetItem (parent, "Kids", HPDF_OCLASS_ARRAY);
    if (!kids)
        return HPDF_SetError (parent->error, HPDF_PAGES_MISSING_KIDS_ENTRY, 0);

    if (kid->header.obj_class == (HPDF_OCLASS_DICT | HPDF_OSUBCLASS_PAGE)) {
        HPDF_PageAttr attr = (HPDF_PageAttr)kid->attr;

        attr->parent = parent;
    }

    return HPDF_Array_Add (kids, kid);
}
