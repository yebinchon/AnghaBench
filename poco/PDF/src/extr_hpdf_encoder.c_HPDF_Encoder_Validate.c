
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ sig_bytes; } ;
typedef int HPDF_STATUS ;
typedef TYPE_1__* HPDF_Encoder ;


 scalar_t__ HPDF_ENCODER_SIG_BYTES ;
 int HPDF_FALSE ;
 int HPDF_PTRACE (char*) ;
 int HPDF_TRUE ;

HPDF_STATUS
HPDF_Encoder_Validate (HPDF_Encoder encoder)
{
    HPDF_PTRACE ((" HPDF_Encoder_Validate\n"));

    if (!encoder || encoder->sig_bytes != HPDF_ENCODER_SIG_BYTES)
        return HPDF_FALSE;
    else
        return HPDF_TRUE;
}
