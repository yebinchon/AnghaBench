
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_17__ {int base_encoding; scalar_t__ ovewrride_map; int encoding_name; } ;
struct TYPE_16__ {char* name; char* base_encoding; int has_differences; int last_char; int first_char; struct TYPE_16__* attr; int sig_bytes; TYPE_1__* mmgr; int free_fn; int write_fn; int * encode_text_fn; int to_unicode_fn; int type; int error; } ;
struct TYPE_15__ {int error; } ;
typedef TYPE_1__* HPDF_MMgr ;
typedef int HPDF_Encoder_Rec ;
typedef TYPE_2__* HPDF_Encoder ;
typedef TYPE_3__ HPDF_BuiltinEncodingData ;
typedef int HPDF_BasicEncoderAttr_Rec ;
typedef TYPE_2__* HPDF_BasicEncoderAttr ;





 int HPDF_BASIC_ENCODER_FIRST_CHAR ;
 int HPDF_BASIC_ENCODER_LAST_CHAR ;
 int HPDF_BasicEncoder_CopyMap (TYPE_2__*,int ) ;
 TYPE_3__* HPDF_BasicEncoder_FindBuiltinData (char const*) ;
 int HPDF_BasicEncoder_Free ;
 int HPDF_BasicEncoder_OverrideMap (TYPE_2__*,scalar_t__) ;
 int HPDF_BasicEncoder_ToUnicode ;
 int HPDF_BasicEncoder_Write ;
 int HPDF_ENCODER_SIG_BYTES ;
 int HPDF_ENCODER_TYPE_SINGLE_BYTE ;
 int HPDF_ENCODING_FONT_SPECIFIC ;
 int HPDF_ENCODING_MAC_ROMAN ;
 int HPDF_ENCODING_STANDARD ;
 int HPDF_ENCODING_WIN_ANSI ;
 int HPDF_FALSE ;
 int HPDF_FreeMem (TYPE_1__*,TYPE_2__*) ;
 TYPE_2__* HPDF_GetMem (TYPE_1__*,int) ;
 int HPDF_INVALID_ENCODING_NAME ;
 int HPDF_LIMIT_MAX_NAME_LEN ;
 int HPDF_MemSet (TYPE_2__*,int ,int) ;
 int HPDF_PTRACE (char*) ;
 int HPDF_SetError (int ,int ,int ) ;
 int HPDF_StrCpy (char*,int ,char*) ;
 int HPDF_UNICODE_MAP_FONT_SPECIFIC ;
 int HPDF_UNICODE_MAP_MAC_ROMAN ;
 int HPDF_UNICODE_MAP_STANDARD ;
 int HPDF_UNICODE_MAP_WIN_ANSI ;

HPDF_Encoder
HPDF_BasicEncoder_New (HPDF_MMgr mmgr,
                        const char *encoding_name)
{
    HPDF_Encoder encoder;
    HPDF_BasicEncoderAttr encoder_attr;
    const HPDF_BuiltinEncodingData *data;
    char *eptr;

    HPDF_PTRACE((" HPDF_BasicEncoder_New\n"));

    if (mmgr == ((void*)0))
        return ((void*)0);

    data = HPDF_BasicEncoder_FindBuiltinData (encoding_name);
    if (!data->encoding_name) {
        HPDF_SetError (mmgr->error, HPDF_INVALID_ENCODING_NAME, 0);
        return ((void*)0);
    }

    encoder = HPDF_GetMem (mmgr, sizeof(HPDF_Encoder_Rec));
    if (!encoder)
        return ((void*)0);

    HPDF_MemSet (encoder, 0, sizeof(HPDF_Encoder_Rec));

    eptr = encoder->name + HPDF_LIMIT_MAX_NAME_LEN;
    HPDF_StrCpy (encoder->name, data->encoding_name, eptr);

    encoder->mmgr = mmgr;
    encoder->error = mmgr->error;
    encoder->type = HPDF_ENCODER_TYPE_SINGLE_BYTE;
    encoder->to_unicode_fn = HPDF_BasicEncoder_ToUnicode;
    encoder->encode_text_fn = ((void*)0);
    encoder->write_fn = HPDF_BasicEncoder_Write;
    encoder->free_fn = HPDF_BasicEncoder_Free;

    encoder_attr = HPDF_GetMem(mmgr, sizeof(HPDF_BasicEncoderAttr_Rec));
    if (!encoder_attr) {
        HPDF_FreeMem (encoder->mmgr, encoder);
        return ((void*)0);
    }

    encoder->sig_bytes = HPDF_ENCODER_SIG_BYTES;
    encoder->attr = encoder_attr;
    HPDF_MemSet (encoder_attr, 0, sizeof(HPDF_BasicEncoderAttr_Rec));

    encoder_attr->first_char = HPDF_BASIC_ENCODER_FIRST_CHAR;
    encoder_attr->last_char = HPDF_BASIC_ENCODER_LAST_CHAR;
    encoder_attr->has_differences = HPDF_FALSE;

    eptr = encoder_attr->base_encoding + HPDF_LIMIT_MAX_NAME_LEN;

    switch (data->base_encoding) {
        case 129:
            HPDF_StrCpy (encoder_attr->base_encoding,
                     HPDF_ENCODING_STANDARD, eptr);
            HPDF_BasicEncoder_CopyMap (encoder, HPDF_UNICODE_MAP_STANDARD);
            break;
        case 128:
            HPDF_StrCpy (encoder_attr->base_encoding,
                     HPDF_ENCODING_WIN_ANSI, eptr);
            HPDF_BasicEncoder_CopyMap (encoder, HPDF_UNICODE_MAP_WIN_ANSI);
            break;
        case 130:
            HPDF_StrCpy (encoder_attr->base_encoding,
                     HPDF_ENCODING_MAC_ROMAN, eptr);
            HPDF_BasicEncoder_CopyMap (encoder, HPDF_UNICODE_MAP_MAC_ROMAN);
            break;
        default:
            HPDF_StrCpy (encoder_attr->base_encoding,
                     HPDF_ENCODING_FONT_SPECIFIC, eptr);
            HPDF_BasicEncoder_CopyMap (encoder,
                    HPDF_UNICODE_MAP_FONT_SPECIFIC);
    }

    if (data->ovewrride_map)
        HPDF_BasicEncoder_OverrideMap (encoder, data->ovewrride_map);

    return encoder;
}
