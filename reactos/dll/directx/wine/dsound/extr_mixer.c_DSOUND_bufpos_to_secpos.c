
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int buflen; int tmp_buffer_len; scalar_t__ freqAccNext; scalar_t__ freqAdjust; TYPE_1__* pwfx; TYPE_2__* device; } ;
struct TYPE_8__ {int nBlockAlign; } ;
struct TYPE_7__ {TYPE_3__* pwfx; } ;
struct TYPE_6__ {int nBlockAlign; } ;
typedef TYPE_4__ IDirectSoundBufferImpl ;
typedef int DWORD64 ;
typedef int DWORD ;


 int DSOUND_FREQSHIFT ;
 int TRACE (char*,int,int ,int,int) ;

__attribute__((used)) static DWORD DSOUND_bufpos_to_secpos(const IDirectSoundBufferImpl *dsb, DWORD bufpos)
{
 DWORD oAdv = dsb->device->pwfx->nBlockAlign, iAdv = dsb->pwfx->nBlockAlign, pos;
 DWORD64 framelen;
 DWORD64 acc;

 framelen = bufpos/oAdv;
 acc = framelen * (DWORD64)dsb->freqAdjust + (DWORD64)dsb->freqAccNext;
 acc = acc >> DSOUND_FREQSHIFT;
 pos = (DWORD)acc * iAdv;
 if (pos >= dsb->buflen)

  pos = dsb->buflen - iAdv;
 TRACE("Converted %d/%d to %d/%d\n", bufpos, dsb->tmp_buffer_len, pos, dsb->buflen);
 return pos;
}
