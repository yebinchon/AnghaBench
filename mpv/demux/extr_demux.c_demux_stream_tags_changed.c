
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_stream {struct demux_stream* ds; } ;
struct mp_tags {int dummy; } ;
struct demuxer {struct demux_internal* in; } ;
struct demux_stream {int dummy; } ;
struct demux_internal {int lock; struct demuxer* d_thread; } ;


 double MP_NOPTS_VALUE ;
 int MP_WARN (struct demux_internal*,char*) ;
 int add_timed_metadata (struct demux_internal*,struct mp_tags*,struct sh_stream*,double) ;
 int assert (int) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int talloc_free (struct mp_tags*) ;

void demux_stream_tags_changed(struct demuxer *demuxer, struct sh_stream *sh,
                               struct mp_tags *tags, double pts)
{
    struct demux_internal *in = demuxer->in;
    assert(demuxer == in->d_thread);
    struct demux_stream *ds = sh ? sh->ds : ((void*)0);
    assert(!sh || ds);

    pthread_mutex_lock(&in->lock);

    if (pts == MP_NOPTS_VALUE) {
        MP_WARN(in, "Discarding timed metadata without timestamp.\n");
    } else {
        add_timed_metadata(in, tags, sh, pts);
    }
    talloc_free(tags);

    pthread_mutex_unlock(&in->lock);
}
