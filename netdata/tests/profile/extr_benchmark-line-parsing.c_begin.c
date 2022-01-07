
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct entry {scalar_t__ found; struct entry* next; } ;
struct base {int iteration; scalar_t__ found; struct entry* entries; struct entry* last; scalar_t__ wanted; } ;


 int unlikely (int) ;

__attribute__((used)) static inline void begin(struct base *base) {

  if(unlikely(base->iteration % 60) == 1) {
    base->wanted = 0;
    struct entry *e;
    for(e = base->entries; e ; e = e->next)
      if(e->found) base->wanted++;
  }

  base->iteration++;
  base->last = base->entries;
  base->found = 0;
}
