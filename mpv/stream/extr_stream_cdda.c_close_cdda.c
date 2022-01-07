
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ priv; } ;
typedef TYPE_1__ stream_t ;
struct TYPE_5__ {int cd; int cdp; } ;
typedef TYPE_2__ cdda_priv ;


 int cdda_close (int ) ;
 int paranoia_free (int ) ;

__attribute__((used)) static void close_cdda(stream_t *s)
{
    cdda_priv *p = (cdda_priv *)s->priv;
    paranoia_free(p->cdp);
    cdda_close(p->cd);
}
