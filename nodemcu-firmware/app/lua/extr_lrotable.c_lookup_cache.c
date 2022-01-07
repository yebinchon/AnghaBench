
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int hash; size_t addr; int ndx; } ;
typedef TYPE_1__ cache_line_t ;
typedef int ROTable ;


 int COUNT (int) ;
 int LA_LINES ;
 int LA_SLOTS ;
 TYPE_1__** cache ;

__attribute__((used)) static int lookup_cache(unsigned hash, ROTable *rotable) {
  int i = (hash>>2) & (LA_LINES-1), j;

  for (j = 0; j<LA_SLOTS; j++) {
    cache_line_t cl = cache[i][j];
    if (cl.hash == hash && ((size_t)rotable & 0xffffffu) == cl.addr) {
      COUNT(0);
      return cl.ndx;
    }
  }
  COUNT(1);
  return -1;
}
