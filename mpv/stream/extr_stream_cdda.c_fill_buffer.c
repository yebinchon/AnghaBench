
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ priv; } ;
typedef TYPE_3__ stream_t ;
typedef int int16_t ;
struct TYPE_10__ {int sector; int start_sector; int end_sector; TYPE_2__* cd; int cdp; } ;
typedef TYPE_4__ cdda_priv ;
struct TYPE_8__ {int tracks; TYPE_1__* disc_toc; } ;
struct TYPE_7__ {int dwStartSector; } ;


 int CDIO_CD_FRAMESIZE_RAW ;
 int cdparanoia_callback ;
 int memcpy (void*,int *,int) ;
 int * paranoia_read (int ,int ) ;
 int print_track_info (TYPE_3__*,int) ;

__attribute__((used)) static int fill_buffer(stream_t *s, void *buffer, int max_len)
{
    cdda_priv *p = (cdda_priv *)s->priv;
    int16_t *buf;
    int i;

    if (max_len < CDIO_CD_FRAMESIZE_RAW)
        return -1;

    if ((p->sector < p->start_sector) || (p->sector > p->end_sector)) {
        return 0;
    }

    buf = paranoia_read(p->cdp, cdparanoia_callback);
    if (!buf)
        return 0;

    p->sector++;
    memcpy(buffer, buf, CDIO_CD_FRAMESIZE_RAW);

    for (i = 0; i < p->cd->tracks; i++) {
        if (p->cd->disc_toc[i].dwStartSector == p->sector - 1) {
            print_track_info(s, i + 1);
            break;
        }
    }

    return CDIO_CD_FRAMESIZE_RAW;
}
