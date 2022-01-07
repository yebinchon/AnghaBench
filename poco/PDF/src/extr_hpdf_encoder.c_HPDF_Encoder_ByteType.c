
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* byte_type_fn ) (TYPE_1__*,int *) ;} ;
typedef int HPDF_ParseText_Rec ;
typedef TYPE_1__* HPDF_Encoder ;
typedef int HPDF_ByteType ;


 int HPDF_BYTE_TYPE_SINGLE ;
 int HPDF_PTRACE (char*) ;
 int stub1 (TYPE_1__*,int *) ;

HPDF_ByteType
HPDF_Encoder_ByteType (HPDF_Encoder encoder,
                        HPDF_ParseText_Rec *state)
{
    HPDF_PTRACE ((" HPDF_Encoder_ByteType\n"));

    if (encoder->byte_type_fn)
        return encoder->byte_type_fn (encoder, state);
    else
        return HPDF_BYTE_TYPE_SINGLE;
}
