
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_16__ {scalar_t__ buflen; scalar_t__ mix_buffer; int (* mixfunction ) (int *,scalar_t__,int) ;int * tmp_buffer; TYPE_2__* pwfx; } ;
struct TYPE_14__ {int dwFlags; } ;
struct TYPE_15__ {int buf_mixpos; scalar_t__ tmp_buffer_len; scalar_t__ sec_mixpos; int playflags; scalar_t__ state; scalar_t__ primary_mixpos; TYPE_6__* device; TYPE_3__ dsbd; int buflen; scalar_t__ resampleinmixer; TYPE_1__* buffer; int * tmp_buffer; } ;
struct TYPE_13__ {int nBlockAlign; } ;
struct TYPE_12__ {int * memory; } ;
typedef int INT ;
typedef TYPE_4__ IDirectSoundBufferImpl ;
typedef scalar_t__ DWORD ;
typedef int BYTE ;


 int DSBCAPS_CTRLPOSITIONNOTIFY ;
 int DSBPLAY_LOOPING ;
 int DSOUND_BufPtrDiff (int ,scalar_t__,scalar_t__) ;
 int DSOUND_CheckEvent (TYPE_4__*,scalar_t__,int) ;
 int DSOUND_MixToTemporary (TYPE_4__*,scalar_t__,scalar_t__,int ) ;
 int * DSOUND_MixerVol (TYPE_4__*,int) ;
 int DSOUND_RecalcFreqAcc (TYPE_4__*) ;
 scalar_t__ DSOUND_bufpos_to_mixpos (TYPE_6__*,scalar_t__) ;
 scalar_t__ DSOUND_bufpos_to_secpos (TYPE_4__*,scalar_t__) ;
 int ERR (char*,int,int) ;
 scalar_t__ STATE_STARTING ;
 scalar_t__ STATE_STOPPED ;
 int TRACE (char*,...) ;
 int TRUE ;
 int assert (int) ;
 int stub1 (int *,scalar_t__,int) ;
 int stub2 (int *,scalar_t__,scalar_t__) ;
 int stub3 (int *,scalar_t__,int) ;

__attribute__((used)) static DWORD DSOUND_MixInBuffer(IDirectSoundBufferImpl *dsb, DWORD writepos, DWORD fraglen)
{
 INT len = fraglen, ilen;
 BYTE *ibuf = (dsb->tmp_buffer ? dsb->tmp_buffer : dsb->buffer->memory) + dsb->buf_mixpos, *volbuf;
 DWORD oldpos, mixbufpos;

 TRACE("buf_mixpos=%d/%d sec_mixpos=%d/%d\n", dsb->buf_mixpos, dsb->tmp_buffer_len, dsb->sec_mixpos, dsb->buflen);
 TRACE("(%p,%d,%d)\n",dsb,writepos,fraglen);

 assert(dsb->buf_mixpos + len <= dsb->tmp_buffer_len);

 if (len % dsb->device->pwfx->nBlockAlign) {
  INT nBlockAlign = dsb->device->pwfx->nBlockAlign;
  ERR("length not a multiple of block size, len = %d, block size = %d\n", len, nBlockAlign);
  len -= len % nBlockAlign;
 }


 DSOUND_MixToTemporary(dsb, dsb->sec_mixpos, DSOUND_bufpos_to_secpos(dsb, dsb->buf_mixpos+len) - dsb->sec_mixpos, TRUE);
 if (dsb->resampleinmixer)
  ibuf = dsb->device->tmp_buffer;


 volbuf = DSOUND_MixerVol(dsb, len);
 if (volbuf)
  ibuf = volbuf;

 mixbufpos = DSOUND_bufpos_to_mixpos(dsb->device, writepos);

 if ((writepos + len) <= dsb->device->buflen)
  dsb->device->mixfunction(ibuf, dsb->device->mix_buffer + mixbufpos, len);
 else
 {
  DWORD todo = dsb->device->buflen - writepos;
  dsb->device->mixfunction(ibuf, dsb->device->mix_buffer + mixbufpos, todo);
  dsb->device->mixfunction(ibuf + todo, dsb->device->mix_buffer, len - todo);
 }

 oldpos = dsb->sec_mixpos;
 dsb->buf_mixpos += len;

 if (dsb->buf_mixpos >= dsb->tmp_buffer_len) {
  if (dsb->buf_mixpos > dsb->tmp_buffer_len)
   ERR("Mixpos (%u) past buflen (%u), capping...\n", dsb->buf_mixpos, dsb->tmp_buffer_len);
  if (dsb->playflags & DSBPLAY_LOOPING) {
   dsb->buf_mixpos -= dsb->tmp_buffer_len;
  } else if (dsb->buf_mixpos >= dsb->tmp_buffer_len) {
   dsb->buf_mixpos = dsb->sec_mixpos = 0;
   dsb->state = STATE_STOPPED;
  }
  DSOUND_RecalcFreqAcc(dsb);
 }

 dsb->sec_mixpos = DSOUND_bufpos_to_secpos(dsb, dsb->buf_mixpos);
 ilen = DSOUND_BufPtrDiff(dsb->buflen, dsb->sec_mixpos, oldpos);

 if (dsb->dsbd.dwFlags & DSBCAPS_CTRLPOSITIONNOTIFY &&
     dsb->state != STATE_STARTING) {
  DSOUND_CheckEvent(dsb, oldpos, ilen);
 }


 dsb->primary_mixpos += len;
 if (dsb->primary_mixpos >= dsb->device->buflen)
  dsb->primary_mixpos -= dsb->device->buflen;
 return len;
}
