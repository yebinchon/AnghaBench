
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ count; } ;
struct TYPE_8__ {int mmgr; struct TYPE_8__* prev; scalar_t__ trailer; TYPE_6__* entries; scalar_t__ obj; } ;
typedef TYPE_1__* HPDF_XrefEntry ;
typedef TYPE_1__* HPDF_Xref ;
typedef scalar_t__ HPDF_UINT ;


 int HPDF_Dict_Free (scalar_t__) ;
 int HPDF_FreeMem (int ,TYPE_1__*) ;
 int HPDF_List_Free (TYPE_6__*) ;
 int HPDF_Obj_ForceFree (int ,scalar_t__) ;
 int HPDF_PTRACE (char*) ;
 TYPE_1__* HPDF_Xref_GetEntry (TYPE_1__*,scalar_t__) ;

void
HPDF_Xref_Free (HPDF_Xref xref)
{
    HPDF_UINT i;
    HPDF_XrefEntry entry;
    HPDF_Xref tmp_xref;

    HPDF_PTRACE((" HPDF_Xref_Free\n"));




    while (xref) {


        if (xref->entries) {
            for (i = 0; i < xref->entries->count; i++) {
                entry = HPDF_Xref_GetEntry (xref, i);
                if (entry->obj)
                    HPDF_Obj_ForceFree (xref->mmgr, entry->obj);
                HPDF_FreeMem (xref->mmgr, entry);
            }

            HPDF_List_Free(xref->entries);
        }

        if (xref->trailer)
            HPDF_Dict_Free (xref->trailer);

        tmp_xref = xref->prev;
        HPDF_FreeMem (xref->mmgr, xref);
        xref = tmp_xref;
    }
}
