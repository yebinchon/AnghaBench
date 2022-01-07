
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ start_offset; struct TYPE_6__* prev; TYPE_1__* entries; int error; } ;
struct TYPE_5__ {scalar_t__ count; } ;
typedef int * HPDF_XrefEntry ;
typedef TYPE_2__* HPDF_Xref ;
typedef scalar_t__ HPDF_UINT ;


 int HPDF_INVALID_OBJ_ID ;
 int HPDF_PTRACE (char*) ;
 int HPDF_SetError (int ,int ,int ) ;
 int * HPDF_Xref_GetEntry (TYPE_2__*,scalar_t__) ;

HPDF_XrefEntry
HPDF_Xref_GetEntryByObjectId (HPDF_Xref xref,
                               HPDF_UINT obj_id)
{
    HPDF_Xref tmp_xref = xref;

    HPDF_PTRACE((" HPDF_Xref_GetEntryByObjectId\n"));

    while (tmp_xref) {
        HPDF_UINT i;

        if (tmp_xref->entries->count + tmp_xref->start_offset > obj_id) {
            HPDF_SetError (xref->error, HPDF_INVALID_OBJ_ID, 0);
            return ((void*)0);
        }

        if (tmp_xref->start_offset < obj_id) {
            for (i = 0; i < tmp_xref->entries->count; i++) {
                if (tmp_xref->start_offset + i == obj_id) {
                    HPDF_XrefEntry entry = HPDF_Xref_GetEntry(tmp_xref, i);

                    return entry;
                }
            }
        }

        tmp_xref = tmp_xref->prev;
    }

    return ((void*)0);
}
