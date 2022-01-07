
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int threads; } ;
struct TYPE_5__ {int * data; } ;
typedef TYPE_1__ RListIter ;
typedef int RListComparator ;
typedef TYPE_2__ RDebug ;
typedef int * PTHREAD_ITEM ;


 scalar_t__ __w32_findthread_cmp ;
 TYPE_1__* r_list_find (int ,int*,int ) ;

__attribute__((used)) static inline PTHREAD_ITEM __find_thread(RDebug *dbg, int tid) {
 RListIter *it = r_list_find (dbg->threads, &tid, (RListComparator)__w32_findthread_cmp);
 return it ? it->data : ((void*)0);
}
