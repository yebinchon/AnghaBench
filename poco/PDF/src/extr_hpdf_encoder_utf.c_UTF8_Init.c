
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int writing_mode; scalar_t__ suppliment; scalar_t__ ordering; scalar_t__ registry; int * is_trial_byte_fn; int * is_lead_byte_fn; } ;
struct TYPE_10__ {int type; TYPE_1__* error; scalar_t__ attr; int encode_text_fn; int to_unicode_fn; int byte_type_fn; } ;
struct TYPE_9__ {scalar_t__ error_no; } ;
typedef scalar_t__ HPDF_STATUS ;
typedef TYPE_2__* HPDF_Encoder ;
typedef TYPE_3__* HPDF_CMapEncoderAttr ;


 scalar_t__ HPDF_CMapEncoder_AddCMap (TYPE_2__*,int ) ;
 scalar_t__ HPDF_CMapEncoder_AddCodeSpaceRange (TYPE_2__*,int ) ;
 scalar_t__ HPDF_CMapEncoder_AddNotDefRange (TYPE_2__*,int ) ;
 scalar_t__ HPDF_CMapEncoder_InitAttr (TYPE_2__*) ;
 int HPDF_ENCODER_TYPE_DOUBLE_BYTE ;
 scalar_t__ HPDF_LIMIT_MAX_NAME_LEN ;
 scalar_t__ HPDF_OK ;
 int HPDF_StrCpy (scalar_t__,char*,scalar_t__) ;
 int HPDF_WMODE_HORIZONTAL ;
 int UTF8_CID_RANGE ;
 int UTF8_Encoder_ByteType_Func ;
 int UTF8_Encoder_EncodeText_Func ;
 int UTF8_Encoder_ToUnicode_Func ;
 int UTF8_NOTDEF_RANGE ;
 int UTF8_SPACE_RANGE ;

__attribute__((used)) static HPDF_STATUS
UTF8_Init (HPDF_Encoder encoder)
{
    HPDF_CMapEncoderAttr attr;
    HPDF_STATUS ret;

    if ((ret = HPDF_CMapEncoder_InitAttr (encoder)) != HPDF_OK)
        return ret;




    encoder->byte_type_fn = UTF8_Encoder_ByteType_Func;
    encoder->to_unicode_fn = UTF8_Encoder_ToUnicode_Func;
    encoder->encode_text_fn = UTF8_Encoder_EncodeText_Func;

    attr = (HPDF_CMapEncoderAttr)encoder->attr;

    if (HPDF_CMapEncoder_AddCMap (encoder, UTF8_CID_RANGE) != HPDF_OK)
        return encoder->error->error_no;

    if (HPDF_CMapEncoder_AddCodeSpaceRange (encoder, UTF8_SPACE_RANGE)
        != HPDF_OK)
      return encoder->error->error_no;

    if (HPDF_CMapEncoder_AddNotDefRange (encoder, UTF8_NOTDEF_RANGE)
                != HPDF_OK)
        return encoder->error->error_no;

    attr->is_lead_byte_fn = ((void*)0);
    attr->is_trial_byte_fn = ((void*)0);

    HPDF_StrCpy (attr->registry, "Adobe", attr->registry +
                HPDF_LIMIT_MAX_NAME_LEN);
    HPDF_StrCpy (attr->ordering, "Identity-H", attr->ordering +
                HPDF_LIMIT_MAX_NAME_LEN);
    attr->suppliment = 0;
    attr->writing_mode = HPDF_WMODE_HORIZONTAL;
    encoder->type = HPDF_ENCODER_TYPE_DOUBLE_BYTE;

    return HPDF_OK;
}
