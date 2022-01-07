
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct target {scalar_t__ collected_starttime; scalar_t__ starttime; struct target* next; } ;



__attribute__((used)) static inline void post_aggregate_targets(struct target *root) {
    struct target *w;
    for (w = root; w ; w = w->next) {
        if(w->collected_starttime) {
            if (!w->starttime || w->collected_starttime < w->starttime) {
                w->starttime = w->collected_starttime;
            }
        } else {
            w->starttime = 0;
        }
    }
}
