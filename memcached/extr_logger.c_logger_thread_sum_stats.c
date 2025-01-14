
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct logger_stats {scalar_t__ watcher_sent; scalar_t__ watcher_skipped; scalar_t__ worker_written; scalar_t__ worker_dropped; } ;
struct TYPE_2__ {int log_watcher_sent; int log_watcher_skipped; int log_worker_written; int log_worker_dropped; } ;


 int STATS_LOCK () ;
 int STATS_UNLOCK () ;
 TYPE_1__ stats ;

__attribute__((used)) static void logger_thread_sum_stats(struct logger_stats *ls) {
    STATS_LOCK();
    stats.log_worker_dropped += ls->worker_dropped;
    stats.log_worker_written += ls->worker_written;
    stats.log_watcher_skipped += ls->watcher_skipped;
    stats.log_watcher_sent += ls->watcher_sent;
    STATS_UNLOCK();
}
