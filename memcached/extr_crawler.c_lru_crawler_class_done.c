
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int item ;
struct TYPE_7__ {int checked; int unfetched; int reclaimed; scalar_t__ it_flags; } ;
struct TYPE_6__ {TYPE_1__* mod; } ;
struct TYPE_5__ {int (* doneclass ) (TYPE_2__*,int) ;} ;


 TYPE_2__ active_crawler_mod ;
 int crawler_count ;
 TYPE_3__* crawlers ;
 int do_item_stats_add_crawl (int,int ,int ,int ) ;
 int do_item_unlinktail_q (int *) ;
 int * lru_locks ;
 int pthread_mutex_unlock (int *) ;
 int stub1 (TYPE_2__*,int) ;

__attribute__((used)) static void lru_crawler_class_done(int i) {
    crawlers[i].it_flags = 0;
    crawler_count--;
    do_item_unlinktail_q((item *)&crawlers[i]);
    do_item_stats_add_crawl(i, crawlers[i].reclaimed,
            crawlers[i].unfetched, crawlers[i].checked);
    pthread_mutex_unlock(&lru_locks[i]);
    if (active_crawler_mod.mod->doneclass != ((void*)0))
        active_crawler_mod.mod->doneclass(&active_crawler_mod, i);
}
