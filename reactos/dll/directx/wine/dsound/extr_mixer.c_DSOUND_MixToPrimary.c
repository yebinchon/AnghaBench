
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {size_t nrofbuffers; TYPE_1__** buffers; } ;
struct TYPE_6__ {scalar_t__ state; size_t primary_mixpos; int lock; int hwbuf; scalar_t__ buflen; } ;
typedef size_t INT ;
typedef TYPE_1__ IDirectSoundBufferImpl ;
typedef TYPE_2__ DirectSoundDevice ;
typedef size_t DWORD ;
typedef scalar_t__ BOOL ;


 int DSOUND_CheckEvent (TYPE_1__*,int ,int ) ;
 size_t DSOUND_MixOne (TYPE_1__*,size_t,size_t) ;
 scalar_t__ FALSE ;
 int RtlAcquireResourceShared (int *,scalar_t__) ;
 int RtlReleaseResource (int *) ;
 scalar_t__ STATE_PLAYING ;
 scalar_t__ STATE_STARTING ;
 scalar_t__ STATE_STOPPED ;
 scalar_t__ STATE_STOPPING ;
 int TRACE (char*,...) ;
 scalar_t__ TRUE ;

__attribute__((used)) static DWORD DSOUND_MixToPrimary(const DirectSoundDevice *device, DWORD writepos, DWORD mixlen, BOOL recover, BOOL *all_stopped)
{
 INT i, len;
 DWORD minlen = 0;
 IDirectSoundBufferImpl *dsb;


 *all_stopped = TRUE;

 TRACE("(%d,%d,%d)\n", writepos, mixlen, recover);
 for (i = 0; i < device->nrofbuffers; i++) {
  dsb = device->buffers[i];

  TRACE("MixToPrimary for %p, state=%d\n", dsb, dsb->state);

  if (dsb->buflen && dsb->state && !dsb->hwbuf) {
   TRACE("Checking %p, mixlen=%d\n", dsb, mixlen);
   RtlAcquireResourceShared(&dsb->lock, TRUE);

   if (dsb->state == STATE_STOPPING) {
    dsb->state = STATE_STOPPED;
    DSOUND_CheckEvent(dsb, 0, 0);
   } else if (dsb->state != STATE_STOPPED) {


    if ((dsb->state == STATE_STARTING) || recover) {
     dsb->primary_mixpos = writepos;
    }


    if (dsb->state == STATE_STARTING)
     dsb->state = STATE_PLAYING;


    len = DSOUND_MixOne(dsb, writepos, mixlen);

    if (!minlen) minlen = len;



    else if (len) minlen = (len < minlen) ? len : minlen;

    *all_stopped = FALSE;
   }
   RtlReleaseResource(&dsb->lock);
  }
 }

 TRACE("Mixed at least %d from all buffers\n", minlen);
 return minlen;
}
