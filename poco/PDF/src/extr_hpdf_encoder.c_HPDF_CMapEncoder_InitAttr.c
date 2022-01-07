
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int** unicode_map; void* code_space_range; void* notdef_range; void* cmap_range; int writing_mode; } ;
struct TYPE_8__ {TYPE_1__* error; int mmgr; TYPE_3__* attr; } ;
struct TYPE_7__ {int error_no; } ;
typedef int HPDF_UINT ;
typedef int HPDF_STATUS ;
typedef TYPE_2__* HPDF_Encoder ;
typedef int HPDF_CMapEncoderAttr_Rec ;
typedef TYPE_3__* HPDF_CMapEncoderAttr ;


 int HPDF_DEF_ITEMS_PER_BLOCK ;
 int HPDF_DEF_RANGE_TBL_NUM ;
 TYPE_3__* HPDF_GetMem (int ,int) ;
 int HPDF_INVALID_ENCODER ;
 void* HPDF_List_New (int ,int ) ;
 int HPDF_MemSet (TYPE_3__*,int ,int) ;
 int HPDF_OK ;
 int HPDF_PTRACE (char*) ;
 int HPDF_WMODE_HORIZONTAL ;

HPDF_STATUS
HPDF_CMapEncoder_InitAttr (HPDF_Encoder encoder)
{
    HPDF_CMapEncoderAttr encoder_attr;
    HPDF_UINT i;
    HPDF_UINT j;

    HPDF_PTRACE ((" HPDF_CMapEncoder_InitAttr\n"));

    if (encoder->attr)
        return HPDF_INVALID_ENCODER;

    encoder_attr = HPDF_GetMem(encoder->mmgr,
            sizeof(HPDF_CMapEncoderAttr_Rec));

    if (!encoder_attr)
        return encoder->error->error_no;

    HPDF_MemSet (encoder_attr, 0, sizeof(HPDF_CMapEncoderAttr_Rec));
    encoder->attr = encoder_attr;

    encoder_attr->writing_mode = HPDF_WMODE_HORIZONTAL;

    for (i = 0; i <= 255; i++) {
        for (j = 0; j <= 255; j++) {

            encoder_attr->unicode_map[i][j] = 0x25A1;
        }
    }


    encoder_attr->cmap_range = HPDF_List_New (encoder->mmgr,
                HPDF_DEF_RANGE_TBL_NUM);
    if (!encoder_attr->cmap_range)
        return encoder->error->error_no;

    encoder_attr->notdef_range = HPDF_List_New (encoder->mmgr,
                HPDF_DEF_ITEMS_PER_BLOCK);
    if (!encoder_attr->notdef_range)
        return encoder->error->error_no;

    encoder_attr->code_space_range = HPDF_List_New (encoder->mmgr,
                HPDF_DEF_ITEMS_PER_BLOCK);
    if (!encoder_attr->code_space_range)
        return encoder->error->error_no;

    return HPDF_OK;
}
