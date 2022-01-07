
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_16__ {int error; } ;
struct TYPE_15__ {scalar_t__ start_offset; int trailer; int entries; scalar_t__ addr; int error; TYPE_3__* mmgr; } ;
struct TYPE_14__ {int * obj; int gen_no; scalar_t__ byte_offset; int entry_typ; } ;
typedef int HPDF_Xref_Rec ;
typedef int HPDF_XrefEntry_Rec ;
typedef TYPE_1__* HPDF_XrefEntry ;
typedef TYPE_2__* HPDF_Xref ;
typedef scalar_t__ HPDF_UINT32 ;
typedef TYPE_3__* HPDF_MMgr ;


 int HPDF_DEFALUT_XREF_ENTRY_NUM ;
 int HPDF_Dict_New (TYPE_3__*) ;
 int HPDF_FREE_ENTRY ;
 int HPDF_FreeMem (TYPE_3__*,TYPE_1__*) ;
 scalar_t__ HPDF_GetMem (TYPE_3__*,int) ;
 scalar_t__ HPDF_List_Add (int ,TYPE_1__*) ;
 int HPDF_List_New (TYPE_3__*,int ) ;
 int HPDF_MAX_GENERATION_NUM ;
 int HPDF_MemSet (TYPE_2__*,int ,int) ;
 scalar_t__ HPDF_OK ;
 int HPDF_PTRACE (char*) ;
 int HPDF_Xref_Free (TYPE_2__*) ;

HPDF_Xref
HPDF_Xref_New (HPDF_MMgr mmgr,
                HPDF_UINT32 offset)
{
    HPDF_Xref xref;
    HPDF_XrefEntry new_entry;

    HPDF_PTRACE((" HPDF_Xref_New\n"));

    xref = (HPDF_Xref)HPDF_GetMem (mmgr, sizeof(HPDF_Xref_Rec));
    if (!xref)
        return ((void*)0);

    HPDF_MemSet (xref, 0, sizeof(HPDF_Xref_Rec));
    xref->mmgr = mmgr;
    xref->error = mmgr->error;
    xref->start_offset = offset;

    xref->entries = HPDF_List_New (mmgr, HPDF_DEFALUT_XREF_ENTRY_NUM);
    if (!xref->entries)
        goto Fail;

    xref->addr = 0;

    if (xref->start_offset == 0) {
        new_entry = (HPDF_XrefEntry)HPDF_GetMem (mmgr,
                sizeof(HPDF_XrefEntry_Rec));
        if (!new_entry)
            goto Fail;

        if (HPDF_List_Add (xref->entries, new_entry) != HPDF_OK) {
            HPDF_FreeMem (mmgr, new_entry);
            goto Fail;
        }




        new_entry->entry_typ = HPDF_FREE_ENTRY;
        new_entry->byte_offset = 0;
        new_entry->gen_no = HPDF_MAX_GENERATION_NUM;
        new_entry->obj = ((void*)0);
    }

    xref->trailer = HPDF_Dict_New (mmgr);
    if (!xref->trailer)
        goto Fail;

    return xref;

Fail:
    HPDF_PTRACE((" HPDF_Xref_New failed\n"));
    HPDF_Xref_Free (xref);
    return ((void*)0);
}
