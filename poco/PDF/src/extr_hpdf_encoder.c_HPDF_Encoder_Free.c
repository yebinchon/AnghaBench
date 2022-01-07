
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int mmgr; int (* free_fn ) (TYPE_1__*) ;} ;
typedef TYPE_1__* HPDF_Encoder ;


 int HPDF_FreeMem (int ,TYPE_1__*) ;
 int HPDF_PTRACE (char*) ;
 int stub1 (TYPE_1__*) ;

void
HPDF_Encoder_Free (HPDF_Encoder encoder)
{
    HPDF_PTRACE ((" HPDF_Encoder_Free\n"));

    if (!encoder)
        return;

    if (encoder->free_fn)
        encoder->free_fn (encoder);
    HPDF_FreeMem (encoder->mmgr, encoder);
}
