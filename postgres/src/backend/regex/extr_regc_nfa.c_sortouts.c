
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct state {int nouts; struct arc* outs; } ;
struct nfa {int dummy; } ;
struct arc {struct arc* outchainRev; struct arc* outchain; } ;


 int FREE (struct arc**) ;
 scalar_t__ MALLOC (int) ;
 int NERR (int ) ;
 int REG_ESPACE ;
 int assert (int) ;
 int qsort (struct arc**,int,int,int ) ;
 int sortouts_cmp ;

__attribute__((used)) static void
sortouts(struct nfa *nfa,
   struct state *s)
{
 struct arc **sortarray;
 struct arc *a;
 int n = s->nouts;
 int i;

 if (n <= 1)
  return;

 sortarray = (struct arc **) MALLOC(n * sizeof(struct arc *));
 if (sortarray == ((void*)0))
 {
  NERR(REG_ESPACE);
  return;
 }
 i = 0;
 for (a = s->outs; a != ((void*)0); a = a->outchain)
  sortarray[i++] = a;
 assert(i == n);

 qsort(sortarray, n, sizeof(struct arc *), sortouts_cmp);


 a = sortarray[0];
 s->outs = a;
 a->outchain = sortarray[1];
 a->outchainRev = ((void*)0);
 for (i = 1; i < n - 1; i++)
 {
  a = sortarray[i];
  a->outchain = sortarray[i + 1];
  a->outchainRev = sortarray[i - 1];
 }
 a = sortarray[i];
 a->outchain = ((void*)0);
 a->outchainRev = sortarray[i - 1];
 FREE(sortarray);
}
