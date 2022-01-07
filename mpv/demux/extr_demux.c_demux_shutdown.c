
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct demuxer {int * stream; int * priv; TYPE_1__* desc; } ;
struct demux_internal {scalar_t__ total_bytes; scalar_t__ owns_stream; int * cache; int * current_range; TYPE_2__* d_thread; int * recorder; struct demuxer* d_user; } ;
struct TYPE_4__ {int * priv; } ;
struct TYPE_3__ {int (* close ) (TYPE_2__*) ;} ;


 int assert (int) ;
 int demux_flush (struct demuxer*) ;
 int dumper_close (struct demux_internal*) ;
 int free_empty_cached_ranges (struct demux_internal*) ;
 int free_stream (int *) ;
 int mp_recorder_destroy (int *) ;
 int stub1 (TYPE_2__*) ;
 int talloc_free (int *) ;

__attribute__((used)) static void demux_shutdown(struct demux_internal *in)
{
    struct demuxer *demuxer = in->d_user;

    if (in->recorder) {
        mp_recorder_destroy(in->recorder);
        in->recorder = ((void*)0);
    }

    dumper_close(in);

    if (demuxer->desc->close)
        demuxer->desc->close(in->d_thread);
    demuxer->priv = ((void*)0);
    in->d_thread->priv = ((void*)0);

    demux_flush(demuxer);
    assert(in->total_bytes == 0);

    in->current_range = ((void*)0);
    free_empty_cached_ranges(in);

    talloc_free(in->cache);
    in->cache = ((void*)0);

    if (in->owns_stream)
        free_stream(demuxer->stream);
    demuxer->stream = ((void*)0);
}
