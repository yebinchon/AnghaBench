
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nested_stream {scalar_t__ last_bytes; TYPE_1__* id; } ;
struct demuxer {TYPE_2__* priv; } ;
struct TYPE_4__ {int num_nested; struct nested_stream* nested; } ;
typedef TYPE_2__ lavf_priv_t ;
typedef scalar_t__ int64_t ;
struct TYPE_3__ {scalar_t__ bytes_read; } ;


 int demux_report_unbuffered_read_bytes (struct demuxer*,scalar_t__) ;

__attribute__((used)) static void update_read_stats(struct demuxer *demuxer)
{
    lavf_priv_t *priv = demuxer->priv;

    for (int n = 0; n < priv->num_nested; n++) {
        struct nested_stream *nest = &priv->nested[n];






        int64_t cur = nest->id->bytes_read;
        int64_t new = cur - nest->last_bytes;
        nest->last_bytes = cur;
        demux_report_unbuffered_read_bytes(demuxer, new);

    }
}
