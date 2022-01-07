
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int * unicode_map; } ;
struct TYPE_4__ {scalar_t__ attr; } ;
typedef int HPDF_UNICODE ;
typedef int HPDF_UINT ;
typedef TYPE_1__* HPDF_Encoder ;
typedef TYPE_2__* HPDF_BasicEncoderAttr ;


 int HPDF_BASIC_ENCODER_FIRST_CHAR ;
 int HPDF_BASIC_ENCODER_LAST_CHAR ;
 int HPDF_PTRACE (char*) ;

void
HPDF_BasicEncoder_CopyMap (HPDF_Encoder encoder,
                            const HPDF_UNICODE *map)
{
    HPDF_UINT i;
    HPDF_UNICODE* dst = ((HPDF_BasicEncoderAttr)encoder->attr)->unicode_map +
        HPDF_BASIC_ENCODER_FIRST_CHAR;

    HPDF_PTRACE((" HPDF_BasicEncoder_CopyMap\n"));

    for (i = 0; i <= HPDF_BASIC_ENCODER_LAST_CHAR -
            HPDF_BASIC_ENCODER_FIRST_CHAR; i++)
        *dst++ = *map++;
}
