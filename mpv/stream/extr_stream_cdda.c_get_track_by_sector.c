
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* cd; } ;
typedef TYPE_3__ cdda_priv ;
struct TYPE_6__ {int tracks; TYPE_1__* disc_toc; } ;
struct TYPE_5__ {unsigned int dwStartSector; } ;



__attribute__((used)) static int get_track_by_sector(cdda_priv *p, unsigned int sector)
{
    int i;
    for (i = p->cd->tracks; i >= 0; --i)
        if (p->cd->disc_toc[i].dwStartSector <= sector)
            break;
    return i;
}
