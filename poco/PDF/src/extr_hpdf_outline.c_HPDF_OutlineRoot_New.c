
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int obj_id; } ;
struct TYPE_15__ {TYPE_1__ header; } ;
struct TYPE_13__ {int obj_class; } ;
struct TYPE_14__ {TYPE_2__ header; int before_write_fn; } ;
typedef int HPDF_Xref ;
typedef scalar_t__ HPDF_STATUS ;
typedef TYPE_3__* HPDF_Outline ;
typedef TYPE_4__* HPDF_Number ;
typedef int HPDF_MMgr ;


 int BeforeWrite ;
 scalar_t__ HPDF_Dict_Add (TYPE_3__*,char*,TYPE_4__*) ;
 scalar_t__ HPDF_Dict_AddName (TYPE_3__*,char*,char*) ;
 TYPE_3__* HPDF_Dict_New (int ) ;
 TYPE_4__* HPDF_Number_New (int ,int ) ;
 scalar_t__ HPDF_OK ;
 int HPDF_OSUBCLASS_OUTLINE ;
 int HPDF_OTYPE_HIDDEN ;
 int HPDF_OUTLINE_OPENED ;
 int HPDF_PTRACE (char*) ;
 scalar_t__ HPDF_Xref_Add (int ,TYPE_3__*) ;

HPDF_Outline
HPDF_OutlineRoot_New (HPDF_MMgr mmgr,
                       HPDF_Xref xref)
{
    HPDF_Outline outline;
    HPDF_STATUS ret = HPDF_OK;
    HPDF_Number open_flg;

    HPDF_PTRACE((" HPDF_OutlineRoot_New\n"));

    outline = HPDF_Dict_New (mmgr);
    if (!outline)
        return ((void*)0);

    outline->before_write_fn = BeforeWrite;

    if (HPDF_Xref_Add (xref, outline) != HPDF_OK)
        return ((void*)0);

    open_flg = HPDF_Number_New (mmgr, HPDF_OUTLINE_OPENED);
    if (!open_flg)
        return ((void*)0);

    open_flg->header.obj_id |= HPDF_OTYPE_HIDDEN;

    ret += HPDF_Dict_Add (outline, "_OPENED", open_flg);
    ret += HPDF_Dict_AddName (outline, "Type", "Outlines");

    if (ret != HPDF_OK)
        return ((void*)0);

    outline->header.obj_class |= HPDF_OSUBCLASS_OUTLINE;

    return outline;
}
