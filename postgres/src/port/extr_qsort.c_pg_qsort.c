
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t Min (int,int) ;
 int SWAPINIT (void*,size_t) ;
 char* med3 (char*,char*,char*,int (*) (void const*,void const*)) ;
 int swap (char*,char*) ;
 int vecswap (char*,char*,size_t) ;

void
pg_qsort(void *a, size_t n, size_t es, int (*cmp) (const void *, const void *))
{
 char *pa,
      *pb,
      *pc,
      *pd,
      *pl,
      *pm,
      *pn;
 size_t d1,
    d2;
 int r,
    swaptype,
    presorted;

loop:SWAPINIT(a, es);
 if (n < 7)
 {
  for (pm = (char *) a + es; pm < (char *) a + n * es; pm += es)
   for (pl = pm; pl > (char *) a && cmp(pl - es, pl) > 0;
     pl -= es)
    swap(pl, pl - es);
  return;
 }
 presorted = 1;
 for (pm = (char *) a + es; pm < (char *) a + n * es; pm += es)
 {
  if (cmp(pm - es, pm) > 0)
  {
   presorted = 0;
   break;
  }
 }
 if (presorted)
  return;
 pm = (char *) a + (n / 2) * es;
 if (n > 7)
 {
  pl = (char *) a;
  pn = (char *) a + (n - 1) * es;
  if (n > 40)
  {
   size_t d = (n / 8) * es;

   pl = med3(pl, pl + d, pl + 2 * d, cmp);
   pm = med3(pm - d, pm, pm + d, cmp);
   pn = med3(pn - 2 * d, pn - d, pn, cmp);
  }
  pm = med3(pl, pm, pn, cmp);
 }
 swap(a, pm);
 pa = pb = (char *) a + es;
 pc = pd = (char *) a + (n - 1) * es;
 for (;;)
 {
  while (pb <= pc && (r = cmp(pb, a)) <= 0)
  {
   if (r == 0)
   {
    swap(pa, pb);
    pa += es;
   }
   pb += es;
  }
  while (pb <= pc && (r = cmp(pc, a)) >= 0)
  {
   if (r == 0)
   {
    swap(pc, pd);
    pd -= es;
   }
   pc -= es;
  }
  if (pb > pc)
   break;
  swap(pb, pc);
  pb += es;
  pc -= es;
 }
 pn = (char *) a + n * es;
 d1 = Min(pa - (char *) a, pb - pa);
 vecswap(a, pb - d1, d1);
 d1 = Min(pd - pc, pn - pd - es);
 vecswap(pb, pn - d1, d1);
 d1 = pb - pa;
 d2 = pd - pc;
 if (d1 <= d2)
 {

  if (d1 > es)
   pg_qsort(a, d1 / es, es, cmp);
  if (d2 > es)
  {


   a = pn - d2;
   n = d2 / es;
   goto loop;
  }
 }
 else
 {

  if (d2 > es)
   pg_qsort(pn - d2, d2 / es, es, cmp);
  if (d1 > es)
  {


   n = d1 / es;
   goto loop;
  }
 }
}
