
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int item ;
struct TYPE_4__ {int isize; int ** ilist; } ;
typedef TYPE_1__ conn ;
struct TYPE_5__ {int malloc_fails; } ;


 int STATS_LOCK () ;
 int STATS_UNLOCK () ;
 int ** realloc (int **,int) ;
 TYPE_2__ stats ;

__attribute__((used)) static inline int _ascii_get_expand_ilist(conn *c, int i) {
    if (i >= c->isize) {
        item **new_list = realloc(c->ilist, sizeof(item *) * c->isize * 2);
        if (new_list) {
            c->isize *= 2;
            c->ilist = new_list;
        } else {
            STATS_LOCK();
            stats.malloc_fails++;
            STATS_UNLOCK();
            return -1;
        }
    }
    return 0;
}
