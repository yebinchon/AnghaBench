
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int byte_type; int len; scalar_t__ index; int const* text; } ;
typedef int HPDF_UINT ;
typedef TYPE_1__ HPDF_ParseText_Rec ;
typedef int HPDF_Encoder ;
typedef int HPDF_BYTE ;


 int HPDF_BYTE_TYPE_SINGLE ;
 int HPDF_PTRACE (char*) ;
 int HPDF_UNUSED (int ) ;

void
HPDF_Encoder_SetParseText (HPDF_Encoder encoder,
                            HPDF_ParseText_Rec *state,
                            const HPDF_BYTE *text,
                            HPDF_UINT len)
{
    HPDF_PTRACE ((" HPDF_CMapEncoder_SetParseText\n"));
    HPDF_UNUSED (encoder);

    state->text = text;
    state->index = 0;
    state->len = len;
    state->byte_type = HPDF_BYTE_TYPE_SINGLE;
}
