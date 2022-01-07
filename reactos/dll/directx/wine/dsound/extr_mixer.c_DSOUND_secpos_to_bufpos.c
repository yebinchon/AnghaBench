
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int freqAdjust; int freqAccNext; int freqAcc; TYPE_3__* device; TYPE_1__* pwfx; } ;
struct TYPE_8__ {TYPE_2__* pwfx; } ;
struct TYPE_7__ {scalar_t__ nBlockAlign; } ;
struct TYPE_6__ {scalar_t__ nBlockAlign; } ;
typedef TYPE_4__ IDirectSoundBufferImpl ;
typedef int DWORD64 ;
typedef scalar_t__ DWORD ;


 int DSOUND_FREQSHIFT ;
 int assert (int) ;

DWORD DSOUND_secpos_to_bufpos(const IDirectSoundBufferImpl *dsb, DWORD secpos, DWORD secmixpos, DWORD* overshot)
{
 DWORD64 framelen = secpos / dsb->pwfx->nBlockAlign;
 DWORD64 freqAdjust = dsb->freqAdjust;
 DWORD64 acc, freqAcc;

 if (secpos < secmixpos)
  freqAcc = dsb->freqAccNext;
 else freqAcc = dsb->freqAcc;
 acc = (framelen << DSOUND_FREQSHIFT) + (freqAdjust - 1 - freqAcc);
 acc /= freqAdjust;
 if (overshot)
 {
  DWORD64 oshot = acc * freqAdjust + freqAcc;
  assert(oshot >= framelen << DSOUND_FREQSHIFT);
  oshot -= framelen << DSOUND_FREQSHIFT;
  *overshot = (DWORD)oshot;
  assert(*overshot < dsb->freqAdjust);
 }
 return (DWORD)acc * dsb->device->pwfx->nBlockAlign;
}
