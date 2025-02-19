
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct demux_stream {double back_seek_pos; } ;
struct demux_internal {int seeking; int eof; int idle; int reading; int back_demuxing; int seek_flags; double seek_pts; int num_streams; int threading; TYPE_2__** streams; TYPE_1__* d_thread; } ;
struct demux_cached_range {int dummy; } ;
struct TYPE_4__ {struct demux_stream* ds; } ;
struct TYPE_3__ {int seekable; } ;


 double MP_NOPTS_VALUE ;
 int MP_VERBOSE (struct demux_internal*,char*,...) ;
 int MP_WARN (struct demux_internal*,char*) ;
 int SEEK_CACHED ;
 int SEEK_FORCE ;
 int SEEK_SATAN ;
 int back_demux_see_packets (struct demux_stream*) ;
 int clear_reader_state (struct demux_internal*,int) ;
 int execute_cache_seek (struct demux_internal*,struct demux_cached_range*,double,int) ;
 int execute_seek (struct demux_internal*) ;
 struct demux_cached_range* find_cache_seek_range (struct demux_internal*,double,int) ;
 int switch_to_fresh_cache_range (struct demux_internal*) ;
 int wakeup_ds (struct demux_stream*) ;

__attribute__((used)) static bool queue_seek(struct demux_internal *in, double seek_pts, int flags,
                       bool clear_back_state)
{
    if (seek_pts == MP_NOPTS_VALUE)
        return 0;

    MP_VERBOSE(in, "queuing seek to %f%s\n", seek_pts,
               in->seeking ? " (cascade)" : "");

    bool require_cache = flags & SEEK_CACHED;
    flags &= ~(unsigned)SEEK_CACHED;

    bool set_backwards = flags & SEEK_SATAN;
    flags &= ~(unsigned)SEEK_SATAN;

    bool force_seek = flags & SEEK_FORCE;
    flags &= ~(unsigned)SEEK_FORCE;

    struct demux_cached_range *cache_target =
        find_cache_seek_range(in, seek_pts, flags);

    if (!cache_target) {
        if (require_cache) {
            MP_VERBOSE(in, "Cached seek not possible.\n");
            return 0;
        }
        if (!in->d_thread->seekable && !force_seek) {
            MP_WARN(in, "Cannot seek in this file.\n");
            return 0;
        }
    }

    in->eof = 0;
    in->idle = 1;
    in->reading = 0;
    in->back_demuxing = set_backwards;

    clear_reader_state(in, clear_back_state);

    if (cache_target) {
        execute_cache_seek(in, cache_target, seek_pts, flags);
    } else {
        switch_to_fresh_cache_range(in);

        in->seeking = 1;
        in->seek_flags = flags;
        in->seek_pts = seek_pts;
    }

    for (int n = 0; n < in->num_streams; n++) {
        struct demux_stream *ds = in->streams[n]->ds;

        if (in->back_demuxing) {
            if (ds->back_seek_pos == MP_NOPTS_VALUE)
                ds->back_seek_pos = seek_pts;

            back_demux_see_packets(in->streams[n]->ds);
        }

        wakeup_ds(ds);
    }

    if (!in->threading && in->seeking)
        execute_seek(in);

    return 1;
}
