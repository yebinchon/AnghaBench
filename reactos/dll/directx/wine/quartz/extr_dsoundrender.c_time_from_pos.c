
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_12__ {int nAvgBytesPerSec; } ;
typedef TYPE_5__ WAVEFORMATEX ;
struct TYPE_11__ {TYPE_3__* pInputPin; } ;
struct TYPE_13__ {TYPE_4__ renderer; } ;
struct TYPE_8__ {scalar_t__ pbFormat; } ;
struct TYPE_9__ {TYPE_1__ mtCurrent; } ;
struct TYPE_10__ {TYPE_2__ pin; } ;
typedef int REFERENCE_TIME ;
typedef int DWORD ;
typedef TYPE_6__ DSoundRenderImpl ;



__attribute__((used)) static REFERENCE_TIME time_from_pos(DSoundRenderImpl *This, DWORD pos) {
    WAVEFORMATEX *wfx = (WAVEFORMATEX*)This->renderer.pInputPin->pin.mtCurrent.pbFormat;
    REFERENCE_TIME ret = 10000000;
    ret = ret * pos / wfx->nAvgBytesPerSec;
    return ret;
}
