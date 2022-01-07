
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_9__ {TYPE_1__* pwfx; } ;
struct TYPE_8__ {TYPE_2__* pwfx; int (* convert ) (int const*,int *,int ,int ,int ,int ,int ) ;TYPE_4__* device; } ;
struct TYPE_7__ {int wBitsPerSample; int nChannels; } ;
struct TYPE_6__ {int wBitsPerSample; int nChannels; } ;
typedef int INT ;
typedef TYPE_3__ IDirectSoundBufferImpl ;
typedef TYPE_4__ DirectSoundDevice ;
typedef int BYTE ;


 int WARN (char*,int,int) ;
 int stub1 (int const*,int *,int ,int ,int ,int ,int ) ;
 int stub2 (int const*,int *,int ,int ,int ,int ,int ) ;
 int stub3 (int const*,int *,int ,int ,int ,int ,int ) ;
 int stub4 (int const*,int *,int ,int ,int ,int ,int ) ;
 int stub5 (int const*,int *,int ,int ,int ,int ,int ) ;

__attribute__((used)) static inline void cp_fields(const IDirectSoundBufferImpl *dsb, const BYTE *ibuf, BYTE *obuf,
        UINT istride, UINT ostride, UINT count, UINT freqAcc, UINT adj)
{
    DirectSoundDevice *device = dsb->device;
    INT istep = dsb->pwfx->wBitsPerSample / 8, ostep = device->pwfx->wBitsPerSample / 8;

    if (device->pwfx->nChannels == dsb->pwfx->nChannels ||
        (device->pwfx->nChannels == 2 && dsb->pwfx->nChannels == 6) ||
        (device->pwfx->nChannels == 8 && dsb->pwfx->nChannels == 2) ||
        (device->pwfx->nChannels == 6 && dsb->pwfx->nChannels == 2)) {
        dsb->convert(ibuf, obuf, istride, ostride, count, freqAcc, adj);
        if (device->pwfx->nChannels == 2 || dsb->pwfx->nChannels == 2)
            dsb->convert(ibuf + istep, obuf + ostep, istride, ostride, count, freqAcc, adj);
        return;
    }

    if (device->pwfx->nChannels == 1 && dsb->pwfx->nChannels == 2)
    {
        dsb->convert(ibuf, obuf, istride, ostride, count, freqAcc, adj);
        return;
    }

    if (device->pwfx->nChannels == 2 && dsb->pwfx->nChannels == 1)
    {
        dsb->convert(ibuf, obuf, istride, ostride, count, freqAcc, adj);
        dsb->convert(ibuf, obuf + ostep, istride, ostride, count, freqAcc, adj);
        return;
    }

    WARN("Unable to remap channels: device=%u, buffer=%u\n", device->pwfx->nChannels,
            dsb->pwfx->nChannels);
}
