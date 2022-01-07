
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ut32 ;
struct cdb_make {scalar_t__ pos; } ;



__attribute__((used)) static inline int incpos(struct cdb_make *c, ut32 len) {
 ut32 newpos = c->pos + len;
 if (newpos < len) {
  return 0;
 }
 c->pos = newpos;
 return 1;
}
