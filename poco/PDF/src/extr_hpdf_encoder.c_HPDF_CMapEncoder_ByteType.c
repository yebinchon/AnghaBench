
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ (* is_lead_byte_fn ) (TYPE_2__*,int ) ;scalar_t__ (* is_trial_byte_fn ) (TYPE_2__*,int ) ;} ;
struct TYPE_9__ {int attr; } ;
struct TYPE_8__ {size_t index; size_t len; scalar_t__ byte_type; int * text; } ;
typedef TYPE_1__ HPDF_ParseText_Rec ;
typedef TYPE_2__* HPDF_Encoder ;
typedef TYPE_3__* HPDF_CMapEncoderAttr ;
typedef scalar_t__ HPDF_ByteType ;


 scalar_t__ HPDF_BYTE_TYPE_LEAD ;
 scalar_t__ HPDF_BYTE_TYPE_SINGLE ;
 scalar_t__ HPDF_BYTE_TYPE_TRIAL ;
 scalar_t__ HPDF_BYTE_TYPE_UNKNOWN ;
 int HPDF_PTRACE (char*) ;
 scalar_t__ stub1 (TYPE_2__*,int ) ;
 scalar_t__ stub2 (TYPE_2__*,int ) ;

HPDF_ByteType
HPDF_CMapEncoder_ByteType (HPDF_Encoder encoder,
                            HPDF_ParseText_Rec *state)
{
    HPDF_CMapEncoderAttr attr = (HPDF_CMapEncoderAttr)encoder->attr;

    HPDF_PTRACE ((" HPDF_CMapEncoder_ByteType\n"));

    if (state->index >= state->len)
        return HPDF_BYTE_TYPE_UNKNOWN;

    if (state->byte_type == HPDF_BYTE_TYPE_LEAD) {
        if (attr->is_trial_byte_fn (encoder, state->text[state->index]))
            state->byte_type = HPDF_BYTE_TYPE_TRIAL;
        else
            state->byte_type = HPDF_BYTE_TYPE_UNKNOWN;
   } else {
        if (attr->is_lead_byte_fn (encoder, state->text[state->index]))
            state->byte_type = HPDF_BYTE_TYPE_LEAD;
        else
            state->byte_type = HPDF_BYTE_TYPE_SINGLE;
   }

   state->index++;

   return state->byte_type;
}
