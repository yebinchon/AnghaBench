
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {int uid_offset; int* xuid; int writing_mode; scalar_t__ suppliment; scalar_t__ ordering; scalar_t__ registry; int is_trial_byte_fn; int is_lead_byte_fn; } ;
struct TYPE_11__ {int type; TYPE_1__* error; scalar_t__ attr; } ;
struct TYPE_10__ {scalar_t__ error_no; } ;
typedef scalar_t__ HPDF_STATUS ;
typedef TYPE_2__* HPDF_Encoder ;
typedef TYPE_3__* HPDF_CMapEncoderAttr ;


 int CMAP_ARRAY_ETen_B5_H ;
 int CMAP_ARRAY_ETen_B5_V ;
 int CP950_UNICODE_ARRAY ;
 scalar_t__ ETen_B5_AddCodeSpaceRange (TYPE_2__*) ;
 int ETen_B5_IsLeadByte ;
 int ETen_B5_IsTrialByte ;
 int ETen_B5_NOTDEF_RANGE ;
 scalar_t__ HPDF_CMapEncoder_AddCMap (TYPE_2__*,int ) ;
 scalar_t__ HPDF_CMapEncoder_AddNotDefRange (TYPE_2__*,int ) ;
 scalar_t__ HPDF_CMapEncoder_InitAttr (TYPE_2__*) ;
 int HPDF_CMapEncoder_SetUnicodeArray (TYPE_2__*,int ) ;
 int HPDF_ENCODER_TYPE_DOUBLE_BYTE ;
 scalar_t__ HPDF_LIMIT_MAX_NAME_LEN ;
 scalar_t__ HPDF_OK ;
 int HPDF_StrCpy (scalar_t__,char*,scalar_t__) ;
 int HPDF_WMODE_VERTICAL ;

__attribute__((used)) static HPDF_STATUS
ETen_B5_V_Init (HPDF_Encoder encoder)
{
    HPDF_CMapEncoderAttr attr;
    HPDF_STATUS ret;

    if ((ret = HPDF_CMapEncoder_InitAttr (encoder)) != HPDF_OK)
        return ret;

    attr = (HPDF_CMapEncoderAttr)encoder->attr;

    if ((ret = HPDF_CMapEncoder_AddCMap (encoder, CMAP_ARRAY_ETen_B5_H)) !=
            HPDF_OK)
        return ret;

    if ((ret = HPDF_CMapEncoder_AddCMap (encoder, CMAP_ARRAY_ETen_B5_V)) !=
            HPDF_OK)
        return ret;

    if ((ret = ETen_B5_AddCodeSpaceRange (encoder)) != HPDF_OK)
        return ret;

    if (HPDF_CMapEncoder_AddNotDefRange (encoder, ETen_B5_NOTDEF_RANGE)
                != HPDF_OK)
        return encoder->error->error_no;

    HPDF_CMapEncoder_SetUnicodeArray (encoder, CP950_UNICODE_ARRAY);

    attr->is_lead_byte_fn = ETen_B5_IsLeadByte;
    attr->is_trial_byte_fn = ETen_B5_IsTrialByte;
    HPDF_StrCpy (attr->registry, "Adobe", attr->registry +
                HPDF_LIMIT_MAX_NAME_LEN);
    HPDF_StrCpy (attr->ordering, "CNS1", attr->ordering +
                HPDF_LIMIT_MAX_NAME_LEN);
    attr->suppliment = 0;
    attr->uid_offset = 920;
    attr->xuid[0] = 1;
    attr->xuid[1] = 10;
    attr->xuid[2] = 25391;

    attr->writing_mode = HPDF_WMODE_VERTICAL;

    encoder->type = HPDF_ENCODER_TYPE_DOUBLE_BYTE;

    return HPDF_OK;
}
