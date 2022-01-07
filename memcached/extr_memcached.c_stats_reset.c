
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stats {int dummy; } ;


 int STATS_LOCK () ;
 int STATS_UNLOCK () ;
 int item_stats_reset () ;
 int memset (int *,int ,int) ;
 int stats ;
 int stats_prefix_clear () ;
 int threadlocal_stats_reset () ;

__attribute__((used)) static void stats_reset(void) {
    STATS_LOCK();
    memset(&stats, 0, sizeof(struct stats));
    stats_prefix_clear();
    STATS_UNLOCK();
    threadlocal_stats_reset();
    item_stats_reset();
}
