
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* UTF8_EncoderAttr ;
struct TYPE_10__ {scalar_t__* cid_map; } ;
struct TYPE_9__ {scalar_t__ attr; } ;
struct TYPE_8__ {size_t index; int* text; int len; } ;
struct TYPE_7__ {int current_byte; int* utf8_bytes; int end_byte; } ;
typedef TYPE_2__ HPDF_ParseText_Rec ;
typedef TYPE_3__* HPDF_Encoder ;
typedef TYPE_4__* HPDF_CMapEncoderAttr ;
typedef int HPDF_ByteType ;
typedef int HPDF_BYTE ;


 int HPDF_BYTE_TYPE_SINGLE ;
 int HPDF_BYTE_TYPE_TRIAL ;
 int HPDF_PTRACE (char*) ;

__attribute__((used)) static HPDF_ByteType
UTF8_Encoder_ByteType_Func (HPDF_Encoder encoder,
                             HPDF_ParseText_Rec *state)
{
    HPDF_CMapEncoderAttr encoder_attr;
    HPDF_BYTE byte;
    UTF8_EncoderAttr utf8_attr;

    encoder_attr = (HPDF_CMapEncoderAttr) encoder->attr;
    utf8_attr = (UTF8_EncoderAttr) ((void *)encoder_attr->cid_map[0]);

    if (state->index == 0) {

 HPDF_PTRACE ((" UTF8_Encoder_ByteType_Func - Initialize: (%u) %s\n",
        state->len, state->text));

 utf8_attr->current_byte = 0;
    }

    byte = state->text[state->index];
    state->index++;

    HPDF_PTRACE ((" UTF8_Encoder_ByteType_Func - Byte: %hx\n", byte));

    if (utf8_attr->current_byte == 0) {
 utf8_attr->utf8_bytes[0] = byte;
 utf8_attr->current_byte = 1;

 if (!(byte & 0x80)) {
     utf8_attr->current_byte = 0;
     utf8_attr->end_byte = 0;
     return HPDF_BYTE_TYPE_SINGLE;
 }

 if ((byte & 0xf8) == 0xf0)
     utf8_attr->end_byte = 3;
 else if ((byte & 0xf0) == 0xe0)
     utf8_attr->end_byte = 2;
 else if ((byte & 0xe0) == 0xc0)
     utf8_attr->end_byte = 1;
 else
     utf8_attr->current_byte = 0;
    } else {
 utf8_attr->utf8_bytes[utf8_attr->current_byte] = byte;
 if (utf8_attr->current_byte == utf8_attr->end_byte) {
     utf8_attr->current_byte = 0;
     return HPDF_BYTE_TYPE_SINGLE;
 }

 utf8_attr->current_byte++;
    }

    return HPDF_BYTE_TYPE_TRIAL;
}
