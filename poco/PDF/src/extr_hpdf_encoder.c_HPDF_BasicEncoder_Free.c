
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * attr; int mmgr; } ;
typedef TYPE_1__* HPDF_Encoder ;


 int HPDF_FreeMem (int ,int *) ;
 int HPDF_PTRACE (char*) ;

void
HPDF_BasicEncoder_Free (HPDF_Encoder encoder)
{
    HPDF_PTRACE ((" HPDF_BasicEncoder_Free\n"));

    HPDF_FreeMem (encoder->mmgr, encoder->attr);
    encoder->attr = ((void*)0);
}
