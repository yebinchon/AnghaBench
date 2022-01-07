
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ count; } ;
struct TYPE_7__ {TYPE_3__* code_space_range; TYPE_3__* notdef_range; TYPE_3__* cmap_range; } ;
struct TYPE_6__ {int * attr; int mmgr; } ;
typedef scalar_t__ HPDF_UINT ;
typedef TYPE_1__* HPDF_Encoder ;
typedef int HPDF_CidRange_Rec ;
typedef TYPE_2__* HPDF_CMapEncoderAttr ;


 int HPDF_FreeMem (int ,int *) ;
 int HPDF_List_Free (TYPE_3__*) ;
 int * HPDF_List_ItemAt (TYPE_3__*,scalar_t__) ;
 int HPDF_PTRACE (char*) ;

void
HPDF_CMapEncoder_Free (HPDF_Encoder encoder)
{
    HPDF_CMapEncoderAttr attr;
    HPDF_UINT i;
    HPDF_CidRange_Rec *data;

    HPDF_PTRACE ((" HPDF_CMapEncoder_Free\n"));

    attr = (HPDF_CMapEncoderAttr)encoder->attr;

    if (attr && attr->cmap_range) {
        for (i = 0; i < attr->cmap_range->count; i++) {
            data = HPDF_List_ItemAt (attr->cmap_range, i);

            HPDF_FreeMem (encoder->mmgr, data);
        }

        HPDF_List_Free (attr->cmap_range);
    }

    if (attr && attr->notdef_range) {
        for (i = 0; i < attr->notdef_range->count; i++) {
            data = HPDF_List_ItemAt (attr->notdef_range, i);

            HPDF_FreeMem (encoder->mmgr, data);
        }

        HPDF_List_Free (attr->notdef_range);
    }

    if (attr && attr->code_space_range) {
        for (i = 0; i < attr->code_space_range->count; i++) {
            data = HPDF_List_ItemAt (attr->code_space_range, i);

            HPDF_FreeMem (encoder->mmgr, data);
        }

        HPDF_List_Free (attr->code_space_range);
    }

    HPDF_FreeMem (encoder->mmgr, encoder->attr);
    encoder->attr = ((void*)0);
}
