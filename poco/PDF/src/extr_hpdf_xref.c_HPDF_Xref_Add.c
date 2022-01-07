
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int count; } ;
struct TYPE_10__ {int obj_id; scalar_t__ gen_no; } ;
struct TYPE_9__ {int start_offset; int error; int mmgr; TYPE_5__* entries; } ;
struct TYPE_8__ {scalar_t__ gen_no; void* obj; scalar_t__ byte_offset; int entry_typ; } ;
typedef int HPDF_XrefEntry_Rec ;
typedef TYPE_1__* HPDF_XrefEntry ;
typedef TYPE_2__* HPDF_Xref ;
typedef scalar_t__ HPDF_STATUS ;
typedef TYPE_3__ HPDF_Obj_Header ;


 scalar_t__ HPDF_Error_GetCode (int ) ;
 int HPDF_FreeMem (int ,TYPE_1__*) ;
 scalar_t__ HPDF_GetMem (int ,int) ;
 scalar_t__ HPDF_INVALID_OBJECT ;
 int HPDF_IN_USE_ENTRY ;
 int HPDF_LIMIT_MAX_XREF_ELEMENT ;
 scalar_t__ HPDF_List_Add (TYPE_5__*,TYPE_1__*) ;
 scalar_t__ HPDF_OK ;
 int HPDF_OTYPE_DIRECT ;
 int HPDF_OTYPE_INDIRECT ;
 int HPDF_Obj_ForceFree (int ,void*) ;
 int HPDF_PTRACE (char*) ;
 scalar_t__ HPDF_SetError (int ,scalar_t__,int ) ;
 scalar_t__ HPDF_XREF_COUNT_ERR ;

HPDF_STATUS
HPDF_Xref_Add (HPDF_Xref xref,
                void *obj)
{
    HPDF_XrefEntry entry;
    HPDF_Obj_Header *header;

    HPDF_PTRACE((" HPDF_Xref_Add\n"));

    if (!obj) {
        if (HPDF_Error_GetCode (xref->error) == HPDF_OK)
            return HPDF_SetError (xref->error, HPDF_INVALID_OBJECT, 0);
        else
            return HPDF_INVALID_OBJECT;
    }

    header = (HPDF_Obj_Header *)obj;

    if (header->obj_id & HPDF_OTYPE_DIRECT ||
            header->obj_id & HPDF_OTYPE_INDIRECT)
        return HPDF_SetError(xref->error, HPDF_INVALID_OBJECT, 0);

    if (xref->entries->count >= HPDF_LIMIT_MAX_XREF_ELEMENT) {
        HPDF_SetError(xref->error, HPDF_XREF_COUNT_ERR, 0);
        goto Fail;
    }





    entry = (HPDF_XrefEntry)HPDF_GetMem (xref->mmgr,
            sizeof(HPDF_XrefEntry_Rec));
    if (entry == ((void*)0))
        goto Fail;

    if (HPDF_List_Add(xref->entries, entry) != HPDF_OK) {
        HPDF_FreeMem (xref->mmgr, entry);
        goto Fail;
    }

    entry->entry_typ = HPDF_IN_USE_ENTRY;
    entry->byte_offset = 0;
    entry->gen_no = 0;
    entry->obj = obj;
    header->obj_id = xref->start_offset + xref->entries->count - 1 +
                    HPDF_OTYPE_INDIRECT;

    header->gen_no = entry->gen_no;

    return HPDF_OK;

Fail:
    HPDF_Obj_ForceFree(xref->mmgr, obj);
    return HPDF_Error_GetCode (xref->error);
}
