
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_18__ {int obj_class; } ;
struct TYPE_20__ {TYPE_2__ header; int before_write_fn; } ;
struct TYPE_17__ {int obj_id; } ;
struct TYPE_19__ {TYPE_1__ header; } ;
typedef int HPDF_Xref ;
typedef TYPE_3__* HPDF_String ;
typedef scalar_t__ HPDF_STATUS ;
typedef TYPE_4__* HPDF_Outline ;
typedef TYPE_3__* HPDF_Number ;
typedef int HPDF_MMgr ;
typedef int HPDF_Encoder ;


 scalar_t__ AddChild (TYPE_4__*,TYPE_4__*) ;
 int BeforeWrite ;
 scalar_t__ HPDF_Dict_Add (TYPE_4__*,char*,TYPE_3__*) ;
 scalar_t__ HPDF_Dict_AddName (TYPE_4__*,char*,char*) ;
 TYPE_4__* HPDF_Dict_New (int ) ;
 TYPE_3__* HPDF_Number_New (int ,int ) ;
 scalar_t__ HPDF_OK ;
 int HPDF_OSUBCLASS_OUTLINE ;
 int HPDF_OTYPE_HIDDEN ;
 int HPDF_OUTLINE_OPENED ;
 int HPDF_PTRACE (char*) ;
 TYPE_3__* HPDF_String_New (int ,char const*,int ) ;
 scalar_t__ HPDF_Xref_Add (int ,TYPE_4__*) ;

HPDF_Outline
HPDF_Outline_New (HPDF_MMgr mmgr,
                   HPDF_Outline parent,
                   const char *title,
                   HPDF_Encoder encoder,
                   HPDF_Xref xref)
{
    HPDF_Outline outline;
    HPDF_String s;
    HPDF_STATUS ret = HPDF_OK;
    HPDF_Number open_flg;

    HPDF_PTRACE((" HPDF_Outline_New\n"));

    if (!mmgr || !parent || !xref)
        return ((void*)0);

    outline = HPDF_Dict_New (mmgr);
    if (!outline)
        return ((void*)0);

    outline->before_write_fn = BeforeWrite;

    if (HPDF_Xref_Add (xref, outline) != HPDF_OK)
        return ((void*)0);

    s = HPDF_String_New (mmgr, title, encoder);
    if (!s)
        return ((void*)0);
    else
        ret += HPDF_Dict_Add (outline, "Title", s);

    open_flg = HPDF_Number_New (mmgr, HPDF_OUTLINE_OPENED);
    if (!open_flg)
        return ((void*)0);

    open_flg->header.obj_id |= HPDF_OTYPE_HIDDEN;
    ret += HPDF_Dict_Add (outline, "_OPENED", open_flg);

    ret += HPDF_Dict_AddName (outline, "Type", "Outlines");
    ret += AddChild (parent, outline);

    if (ret != HPDF_OK)
        return ((void*)0);

    outline->header.obj_class |= HPDF_OSUBCLASS_OUTLINE;

    return outline;
}
