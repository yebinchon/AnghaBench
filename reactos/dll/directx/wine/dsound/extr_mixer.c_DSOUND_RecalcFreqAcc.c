
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int tmp_buffer_len; int freqAccNext; int buflen; int freqAcc; int freqneeded; } ;
typedef TYPE_1__ IDirectSoundBufferImpl ;


 int DSOUND_secpos_to_bufpos (TYPE_1__*,int ,int ,int *) ;
 int TRACE (char*,int ,int ) ;

__attribute__((used)) static void DSOUND_RecalcFreqAcc(IDirectSoundBufferImpl *dsb)
{
 if (!dsb->freqneeded) return;
 dsb->freqAcc = dsb->freqAccNext;
 dsb->tmp_buffer_len = DSOUND_secpos_to_bufpos(dsb, dsb->buflen, 0, &dsb->freqAccNext);
 TRACE("New freqadjust: %04x, new buflen: %d\n", dsb->freqAccNext, dsb->tmp_buffer_len);
}
