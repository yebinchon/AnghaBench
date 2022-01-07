
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* avfc; } ;
typedef TYPE_2__ lavf_priv_t ;
struct TYPE_8__ {int metadata; TYPE_2__* priv; } ;
typedef TYPE_3__ demuxer_t ;
struct TYPE_6__ {int event_flags; int metadata; } ;


 int AVFMT_EVENT_FLAG_METADATA_UPDATED ;
 int demux_metadata_changed (TYPE_3__*) ;
 int mp_tags_copy_from_av_dictionary (int ,int ) ;

__attribute__((used)) static void update_metadata(demuxer_t *demuxer)
{
    lavf_priv_t *priv = demuxer->priv;
    if (priv->avfc->event_flags & AVFMT_EVENT_FLAG_METADATA_UPDATED) {
        mp_tags_copy_from_av_dictionary(demuxer->metadata, priv->avfc->metadata);
        priv->avfc->event_flags = 0;
        demux_metadata_changed(demuxer);
    }
}
