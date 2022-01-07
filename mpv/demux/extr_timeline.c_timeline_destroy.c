
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeline {int num_sources; struct demuxer* demuxer; struct demuxer** sources; } ;
struct demuxer {int dummy; } ;


 int demux_free (struct demuxer*) ;
 int talloc_free (struct timeline*) ;

void timeline_destroy(struct timeline *tl)
{
    if (!tl)
        return;
    for (int n = 0; n < tl->num_sources; n++) {
        struct demuxer *d = tl->sources[n];
        if (d != tl->demuxer)
            demux_free(d);
    }
    talloc_free(tl);
}
