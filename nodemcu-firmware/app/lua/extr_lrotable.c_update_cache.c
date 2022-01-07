
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int member_0; size_t member_1; unsigned int member_2; unsigned int hash; size_t addr; unsigned int ndx; } ;
typedef TYPE_1__ cache_line_t ;
typedef int ROTable ;


 int COUNT (int) ;
 int LA_LINES ;
 int LA_SLOTS ;
 TYPE_1__** cache ;

__attribute__((used)) static void update_cache(unsigned hash, ROTable *rotable, unsigned ndx) {
  int i = (hash)>>2 & (LA_LINES-1), j;

  cache_line_t cl = {hash, (size_t) rotable, ndx};







  COUNT(2);
  if (ndx>0xffu)
    return;
  for (j = LA_SLOTS-1; j>0; j--)
    cache[i][j] = cache[i][j-1];
  cache[i][0] = cl;
}
