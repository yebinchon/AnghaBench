
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct map_event_t {int id; } ;



__attribute__((used)) static int _cmp_map_event_by_id(const void *a_, const void *b_) {
 struct map_event_t *a = (void *)a_, *b = (void *)b_;
 return a->id - b->id;
}
