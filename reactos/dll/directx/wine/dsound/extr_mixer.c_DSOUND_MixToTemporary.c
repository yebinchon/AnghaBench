
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ resampleinmixer; int buflen; int freqAdjust; TYPE_4__* buffer; int sec_mixpos; TYPE_3__* device; int freq; int * tmp_buffer; TYPE_1__* pwfx; } ;
struct TYPE_12__ {int * memory; } ;
struct TYPE_11__ {int tmp_buffer_len; TYPE_2__* pwfx; int * tmp_buffer; } ;
struct TYPE_10__ {int nBlockAlign; int nSamplesPerSec; } ;
struct TYPE_9__ {int nBlockAlign; } ;
typedef int INT ;
typedef TYPE_5__ IDirectSoundBufferImpl ;
typedef int DWORD ;
typedef int BYTE ;
typedef scalar_t__ BOOL ;


 int DSOUND_FREQSHIFT ;
 int DSOUND_secpos_to_bufpos (TYPE_5__ const*,int,int ,int*) ;
 int GetProcessHeap () ;
 int * HeapAlloc (int ,int ,int) ;
 int * HeapReAlloc (int ,int ,int *,int) ;
 int TRACE (char*,...) ;
 int assert (int) ;
 int cp_fields (TYPE_5__ const*,int *,int *,int,int,int,int,int) ;

void DSOUND_MixToTemporary(const IDirectSoundBufferImpl *dsb, DWORD writepos, DWORD len, BOOL inmixer)
{
 INT size;
 BYTE *ibp, *obp, *obp_begin;
 INT iAdvance = dsb->pwfx->nBlockAlign;
 INT oAdvance = dsb->device->pwfx->nBlockAlign;
 DWORD freqAcc, target_writepos = 0, overshot, maxlen;


 if ((dsb->tmp_buffer && inmixer) || (!dsb->tmp_buffer && !inmixer) || dsb->resampleinmixer != inmixer)
  return;

 assert(writepos + len <= dsb->buflen);
 if (inmixer && writepos + len < dsb->buflen)
  len += dsb->pwfx->nBlockAlign;

 maxlen = DSOUND_secpos_to_bufpos(dsb, len, 0, ((void*)0));

 ibp = dsb->buffer->memory + writepos;
 if (!inmixer)
  obp_begin = dsb->tmp_buffer;
 else if (dsb->device->tmp_buffer_len < maxlen || !dsb->device->tmp_buffer)
 {
  dsb->device->tmp_buffer_len = maxlen;
  if (dsb->device->tmp_buffer)
   dsb->device->tmp_buffer = HeapReAlloc(GetProcessHeap(), 0, dsb->device->tmp_buffer, maxlen);
  else
   dsb->device->tmp_buffer = HeapAlloc(GetProcessHeap(), 0, maxlen);
  obp_begin = dsb->device->tmp_buffer;
 }
 else
  obp_begin = dsb->device->tmp_buffer;

 TRACE("(%p, %p)\n", dsb, ibp);
 size = len / iAdvance;


 if (dsb->freq == dsb->device->pwfx->nSamplesPerSec) {
  TRACE("(%p) Same sample rate %d = primary %d\n", dsb,
   dsb->freq, dsb->device->pwfx->nSamplesPerSec);
  obp = obp_begin;
  if (!inmixer)
    obp += writepos/iAdvance*oAdvance;

  cp_fields(dsb, ibp, obp, iAdvance, oAdvance, size, 0, 1 << DSOUND_FREQSHIFT);
  return;
 }


 TRACE("(%p) Adjusting frequency: %d -> %d\n", dsb, dsb->freq, dsb->device->pwfx->nSamplesPerSec);

 target_writepos = DSOUND_secpos_to_bufpos(dsb, writepos, dsb->sec_mixpos, &freqAcc);
 overshot = freqAcc >> DSOUND_FREQSHIFT;
 if (overshot)
 {
  if (overshot >= size)
   return;
  size -= overshot;
  writepos += overshot * iAdvance;
  if (writepos >= dsb->buflen)
   return;
  ibp = dsb->buffer->memory + writepos;
  freqAcc &= (1 << DSOUND_FREQSHIFT) - 1;
  TRACE("Overshot: %d, freqAcc: %04x\n", overshot, freqAcc);
 }

 if (!inmixer)
  obp = obp_begin + target_writepos;
 else obp = obp_begin;


 cp_fields(dsb, ibp, obp, iAdvance, oAdvance, size, freqAcc, dsb->freqAdjust);
}
