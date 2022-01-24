#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {int base_encoding; scalar_t__ ovewrride_map; int /*<<< orphan*/  encoding_name; } ;
struct TYPE_16__ {char* name; char* base_encoding; int /*<<< orphan*/  has_differences; int /*<<< orphan*/  last_char; int /*<<< orphan*/  first_char; struct TYPE_16__* attr; int /*<<< orphan*/  sig_bytes; TYPE_1__* mmgr; int /*<<< orphan*/  free_fn; int /*<<< orphan*/  write_fn; int /*<<< orphan*/ * encode_text_fn; int /*<<< orphan*/  to_unicode_fn; int /*<<< orphan*/  type; int /*<<< orphan*/  error; } ;
struct TYPE_15__ {int /*<<< orphan*/  error; } ;
typedef  TYPE_1__* HPDF_MMgr ;
typedef  int /*<<< orphan*/  HPDF_Encoder_Rec ;
typedef  TYPE_2__* HPDF_Encoder ;
typedef  TYPE_3__ HPDF_BuiltinEncodingData ;
typedef  int /*<<< orphan*/  HPDF_BasicEncoderAttr_Rec ;
typedef  TYPE_2__* HPDF_BasicEncoderAttr ;

/* Variables and functions */
#define  HPDF_BASE_ENCODING_MAC_ROMAN 130 
#define  HPDF_BASE_ENCODING_STANDARD 129 
#define  HPDF_BASE_ENCODING_WIN_ANSI 128 
 int /*<<< orphan*/  HPDF_BASIC_ENCODER_FIRST_CHAR ; 
 int /*<<< orphan*/  HPDF_BASIC_ENCODER_LAST_CHAR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC1 (char const*) ; 
 int /*<<< orphan*/  HPDF_BasicEncoder_Free ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  HPDF_BasicEncoder_ToUnicode ; 
 int /*<<< orphan*/  HPDF_BasicEncoder_Write ; 
 int /*<<< orphan*/  HPDF_ENCODER_SIG_BYTES ; 
 int /*<<< orphan*/  HPDF_ENCODER_TYPE_SINGLE_BYTE ; 
 int /*<<< orphan*/  HPDF_ENCODING_FONT_SPECIFIC ; 
 int /*<<< orphan*/  HPDF_ENCODING_MAC_ROMAN ; 
 int /*<<< orphan*/  HPDF_ENCODING_STANDARD ; 
 int /*<<< orphan*/  HPDF_ENCODING_WIN_ANSI ; 
 int /*<<< orphan*/  HPDF_FALSE ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_2__*) ; 
 TYPE_2__* FUNC4 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  HPDF_INVALID_ENCODING_NAME ; 
 int HPDF_LIMIT_MAX_NAME_LEN ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  HPDF_UNICODE_MAP_FONT_SPECIFIC ; 
 int /*<<< orphan*/  HPDF_UNICODE_MAP_MAC_ROMAN ; 
 int /*<<< orphan*/  HPDF_UNICODE_MAP_STANDARD ; 
 int /*<<< orphan*/  HPDF_UNICODE_MAP_WIN_ANSI ; 

HPDF_Encoder
FUNC9  (HPDF_MMgr        mmgr,
                        const char  *encoding_name)
{
    HPDF_Encoder encoder;
    HPDF_BasicEncoderAttr encoder_attr;
    const HPDF_BuiltinEncodingData *data;
    char *eptr;

    FUNC6((" HPDF_BasicEncoder_New\n"));

    if (mmgr == NULL)
        return NULL;

    data = FUNC1 (encoding_name);
    if (!data->encoding_name) {
        FUNC7 (mmgr->error, HPDF_INVALID_ENCODING_NAME, 0);
        return NULL;
    }

    encoder = FUNC4 (mmgr, sizeof(HPDF_Encoder_Rec));
    if (!encoder)
        return NULL;

    FUNC5 (encoder, 0, sizeof(HPDF_Encoder_Rec));

    eptr = encoder->name + HPDF_LIMIT_MAX_NAME_LEN;
    FUNC8 (encoder->name, data->encoding_name, eptr);

    encoder->mmgr = mmgr;
    encoder->error = mmgr->error;
    encoder->type = HPDF_ENCODER_TYPE_SINGLE_BYTE;
    encoder->to_unicode_fn = HPDF_BasicEncoder_ToUnicode;
    encoder->encode_text_fn = NULL;
    encoder->write_fn = HPDF_BasicEncoder_Write;
    encoder->free_fn = HPDF_BasicEncoder_Free;

    encoder_attr = FUNC4(mmgr, sizeof(HPDF_BasicEncoderAttr_Rec));
    if (!encoder_attr) {
        FUNC3 (encoder->mmgr, encoder);
        return NULL;
    }

    encoder->sig_bytes = HPDF_ENCODER_SIG_BYTES;
    encoder->attr = encoder_attr;
    FUNC5 (encoder_attr, 0, sizeof(HPDF_BasicEncoderAttr_Rec));

    encoder_attr->first_char = HPDF_BASIC_ENCODER_FIRST_CHAR;
    encoder_attr->last_char = HPDF_BASIC_ENCODER_LAST_CHAR;
    encoder_attr->has_differences = HPDF_FALSE;

    eptr = encoder_attr->base_encoding + HPDF_LIMIT_MAX_NAME_LEN;

    switch (data->base_encoding) {
        case HPDF_BASE_ENCODING_STANDARD:
            FUNC8 (encoder_attr->base_encoding,
                     HPDF_ENCODING_STANDARD,  eptr);
            FUNC0 (encoder, HPDF_UNICODE_MAP_STANDARD);
            break;
        case HPDF_BASE_ENCODING_WIN_ANSI:
            FUNC8 (encoder_attr->base_encoding,
                     HPDF_ENCODING_WIN_ANSI,  eptr);
            FUNC0 (encoder, HPDF_UNICODE_MAP_WIN_ANSI);
            break;
        case HPDF_BASE_ENCODING_MAC_ROMAN:
            FUNC8 (encoder_attr->base_encoding,
                     HPDF_ENCODING_MAC_ROMAN,  eptr);
            FUNC0 (encoder, HPDF_UNICODE_MAP_MAC_ROMAN);
            break;
        default:
            FUNC8 (encoder_attr->base_encoding,
                     HPDF_ENCODING_FONT_SPECIFIC,  eptr);
            FUNC0 (encoder,
                    HPDF_UNICODE_MAP_FONT_SPECIFIC);
    }

    if (data->ovewrride_map)
        FUNC2  (encoder, data->ovewrride_map);

    return encoder;
}