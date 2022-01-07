
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_13__ {int wBitsPerSample; } ;
typedef TYPE_5__ WAVEFORMATEX ;
struct TYPE_12__ {TYPE_3__* pInputPin; } ;
struct TYPE_14__ {scalar_t__ writepos; scalar_t__ buf_size; scalar_t__ last_playpos; int dsbuffer; int play_time; TYPE_4__ renderer; } ;
struct TYPE_9__ {scalar_t__ pbFormat; } ;
struct TYPE_10__ {TYPE_1__ mtCurrent; } ;
struct TYPE_11__ {TYPE_2__ pin; } ;
typedef scalar_t__ DWORD ;
typedef TYPE_6__ DSoundRenderImpl ;
typedef int BYTE ;
typedef int BOOL ;


 int FIXME (char*) ;
 int IDirectSoundBuffer_GetCurrentPosition (int ,scalar_t__*,scalar_t__*) ;
 int IDirectSoundBuffer_Lock (int ,scalar_t__,scalar_t__,void**,scalar_t__*,void**,scalar_t__*,int ) ;
 int IDirectSoundBuffer_Unlock (int ,int *,scalar_t__,int *,scalar_t__) ;
 int TRACE (char*,scalar_t__,scalar_t__,scalar_t__) ;
 int memset (int *,int,scalar_t__) ;
 scalar_t__ time_from_pos (TYPE_6__*,scalar_t__) ;

__attribute__((used)) static void DSoundRender_UpdatePositions(DSoundRenderImpl *This, DWORD *seqwritepos, DWORD *minwritepos) {
    WAVEFORMATEX *wfx = (WAVEFORMATEX*)This->renderer.pInputPin->pin.mtCurrent.pbFormat;
    BYTE *buf1, *buf2;
    DWORD size1, size2, playpos, writepos, old_writepos, old_playpos, adv;
    BOOL writepos_set = This->writepos < This->buf_size;


    old_writepos = This->writepos;
    old_playpos = This->last_playpos;
    if (old_writepos <= old_playpos)
        old_writepos += This->buf_size;

    IDirectSoundBuffer_GetCurrentPosition(This->dsbuffer, &playpos, &writepos);
    if (old_playpos > playpos) {
        adv = This->buf_size + playpos - old_playpos;
        This->play_time += time_from_pos(This, This->buf_size);
    } else
        adv = playpos - old_playpos;
    This->last_playpos = playpos;
    if (adv) {
        TRACE("Moving from %u to %u: clearing %u bytes\n", old_playpos, playpos, adv);
        IDirectSoundBuffer_Lock(This->dsbuffer, old_playpos, adv, (void**)&buf1, &size1, (void**)&buf2, &size2, 0);
        memset(buf1, wfx->wBitsPerSample == 8 ? 128 : 0, size1);
        memset(buf2, wfx->wBitsPerSample == 8 ? 128 : 0, size2);
        IDirectSoundBuffer_Unlock(This->dsbuffer, buf1, size1, buf2, size2);
    }
    *minwritepos = writepos;
    if (!writepos_set || old_writepos < writepos) {
        if (writepos_set) {
            This->writepos = This->buf_size;
            FIXME("Underrun of data occurred!\n");
        }
        *seqwritepos = writepos;
    } else
        *seqwritepos = This->writepos;
}
