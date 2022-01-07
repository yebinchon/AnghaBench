
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* pg_wchar ;
struct TYPE_4__ {int nranges; int rangespace; int nchrs; int chrspace; void** chrs; void** ranges; } ;
struct TYPE_5__ {TYPE_1__ cv; } ;
typedef TYPE_2__ pg_ctype_cache ;
typedef void* chr ;


 int assert (int) ;
 scalar_t__ realloc (void**,int) ;

__attribute__((used)) static bool
store_match(pg_ctype_cache *pcc, pg_wchar chr1, int nchrs)
{
 chr *newchrs;

 if (nchrs > 1)
 {
  if (pcc->cv.nranges >= pcc->cv.rangespace)
  {
   pcc->cv.rangespace *= 2;
   newchrs = (chr *) realloc(pcc->cv.ranges,
           pcc->cv.rangespace * sizeof(chr) * 2);
   if (newchrs == ((void*)0))
    return 0;
   pcc->cv.ranges = newchrs;
  }
  pcc->cv.ranges[pcc->cv.nranges * 2] = chr1;
  pcc->cv.ranges[pcc->cv.nranges * 2 + 1] = chr1 + nchrs - 1;
  pcc->cv.nranges++;
 }
 else
 {
  assert(nchrs == 1);
  if (pcc->cv.nchrs >= pcc->cv.chrspace)
  {
   pcc->cv.chrspace *= 2;
   newchrs = (chr *) realloc(pcc->cv.chrs,
           pcc->cv.chrspace * sizeof(chr));
   if (newchrs == ((void*)0))
    return 0;
   pcc->cv.chrs = newchrs;
  }
  pcc->cv.chrs[pcc->cv.nchrs++] = chr1;
 }
 return 1;
}
