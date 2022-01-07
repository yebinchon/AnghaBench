
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct demux_internal {scalar_t__ next_cache_update; int lock; int eof; scalar_t__ seeking; scalar_t__ back_any_need_recheck; scalar_t__ need_back_seek; scalar_t__ tracks_switched; int opts_cache; } ;


 int check_backward_seek (struct demux_internal*) ;
 int execute_seek (struct demux_internal*) ;
 int execute_trackswitch (struct demux_internal*) ;
 scalar_t__ m_config_cache_update (int ) ;
 scalar_t__ mp_time_us () ;
 int perform_backward_seek (struct demux_internal*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 scalar_t__ read_packet (struct demux_internal*) ;
 int update_cache (struct demux_internal*) ;
 int update_opts (struct demux_internal*) ;

__attribute__((used)) static bool thread_work(struct demux_internal *in)
{
    if (m_config_cache_update(in->opts_cache))
        update_opts(in);
    if (in->tracks_switched) {
        execute_trackswitch(in);
        return 1;
    }
    if (in->need_back_seek) {
        perform_backward_seek(in);
        return 1;
    }
    if (in->back_any_need_recheck) {
        check_backward_seek(in);
        return 1;
    }
    if (in->seeking) {
        execute_seek(in);
        return 1;
    }
    if (!in->eof) {
        if (read_packet(in))
            return 1;
    }
    if (mp_time_us() >= in->next_cache_update) {
        pthread_mutex_unlock(&in->lock);
        update_cache(in);
        pthread_mutex_lock(&in->lock);
        return 1;
    }
    return 0;
}
