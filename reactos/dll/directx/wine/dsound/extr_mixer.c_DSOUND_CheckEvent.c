
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int nrofnotifies; int buflen; scalar_t__ state; TYPE_1__* notifies; } ;
struct TYPE_5__ {int dwOffset; TYPE_2__ const* hEventNotify; } ;
typedef TYPE_1__* LPDSBPOSITIONNOTIFY ;
typedef TYPE_2__ IDirectSoundBufferImpl ;
typedef int DWORD ;


 int DSBPN_OFFSETSTOP ;
 scalar_t__ STATE_STOPPED ;
 int SetEvent (TYPE_2__ const*) ;
 int TRACE (char*,...) ;

void DSOUND_CheckEvent(const IDirectSoundBufferImpl *dsb, DWORD playpos, int len)
{
 int i;
 DWORD offset;
 LPDSBPOSITIONNOTIFY event;
 TRACE("(%p,%d)\n",dsb,len);

 if (dsb->nrofnotifies == 0)
  return;

 TRACE("(%p) buflen = %d, playpos = %d, len = %d\n",
  dsb, dsb->buflen, playpos, len);
 for (i = 0; i < dsb->nrofnotifies ; i++) {
  event = dsb->notifies + i;
  offset = event->dwOffset;
  TRACE("checking %d, position %d, event = %p\n",
   i, offset, event->hEventNotify);







  if (offset == DSBPN_OFFSETSTOP) {
   if (dsb->state == STATE_STOPPED) {
    SetEvent(event->hEventNotify);
    TRACE("signalled event %p (%d)\n", event->hEventNotify, i);
   }
                        continue;
  }
  if ((playpos + len) >= dsb->buflen) {
   if ((offset < ((playpos + len) % dsb->buflen)) ||
       (offset >= playpos)) {
    TRACE("signalled event %p (%d)\n", event->hEventNotify, i);
    SetEvent(event->hEventNotify);
   }
  } else {
   if ((offset >= playpos) && (offset < (playpos + len))) {
    TRACE("signalled event %p (%d)\n", event->hEventNotify, i);
    SetEvent(event->hEventNotify);
   }
  }
 }
}
