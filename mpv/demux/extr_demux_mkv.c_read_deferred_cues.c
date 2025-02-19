
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct header_elem {scalar_t__ id; } ;
struct TYPE_5__ {int index_mode; int num_headers; struct header_elem* headers; scalar_t__ index_complete; } ;
typedef TYPE_1__ mkv_demuxer_t ;
struct TYPE_6__ {TYPE_1__* priv; } ;
typedef TYPE_2__ demuxer_t ;


 scalar_t__ MATROSKA_ID_CUES ;
 int read_deferred_element (TYPE_2__*,struct header_elem*) ;

__attribute__((used)) static void read_deferred_cues(demuxer_t *demuxer)
{
    mkv_demuxer_t *mkv_d = demuxer->priv;

    if (mkv_d->index_complete || mkv_d->index_mode != 1)
        return;

    for (int n = 0; n < mkv_d->num_headers; n++) {
        struct header_elem *elem = &mkv_d->headers[n];

        if (elem->id == MATROSKA_ID_CUES)
            read_deferred_element(demuxer, elem);
    }
}
