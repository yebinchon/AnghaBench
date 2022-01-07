
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int obj_class; } ;
struct TYPE_8__ {TYPE_1__ header; } ;
typedef int HPDF_Xref ;
typedef int HPDF_MMgr ;
typedef TYPE_2__* HPDF_Dict ;


 scalar_t__ HPDF_Dict_AddName (TYPE_2__*,char*,char*) ;
 TYPE_2__* HPDF_Dict_New (int ) ;
 scalar_t__ HPDF_OK ;
 int HPDF_OSUBCLASS_EXT_GSTATE ;
 int HPDF_PTRACE (char*) ;
 scalar_t__ HPDF_Xref_Add (int ,TYPE_2__*) ;

HPDF_Dict
HPDF_ExtGState_New (HPDF_MMgr mmgr,
                     HPDF_Xref xref)
{
    HPDF_Dict obj = HPDF_Dict_New (mmgr);

    HPDF_PTRACE ((" HPDF_ExtGState_New\n"));

    if (!obj)
        return ((void*)0);

    if (HPDF_Xref_Add (xref, obj) != HPDF_OK)
        return ((void*)0);

    if (HPDF_Dict_AddName (obj, "Type", "ExtGState") != HPDF_OK)
        return ((void*)0);

    obj->header.obj_class |= HPDF_OSUBCLASS_EXT_GSTATE;

    return obj;
}
