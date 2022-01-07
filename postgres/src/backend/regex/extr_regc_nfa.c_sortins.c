
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct state {int nins; struct arc* ins; } ;
struct nfa {int dummy; } ;
struct arc {struct arc* inchainRev; struct arc* inchain; } ;


 int FREE (struct arc**) ;
 scalar_t__ MALLOC (int) ;
 int NERR (int ) ;
 int REG_ESPACE ;
 int assert (int) ;
 int qsort (struct arc**,int,int,int ) ;
 int sortins_cmp ;

__attribute__((used)) static void
sortins(struct nfa *nfa,
  struct state *s)
{
 struct arc **sortarray;
 struct arc *a;
 int n = s->nins;
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
 for (a = s->ins; a != ((void*)0); a = a->inchain)
  sortarray[i++] = a;
 assert(i == n);

 qsort(sortarray, n, sizeof(struct arc *), sortins_cmp);


 a = sortarray[0];
 s->ins = a;
 a->inchain = sortarray[1];
 a->inchainRev = ((void*)0);
 for (i = 1; i < n - 1; i++)
 {
  a = sortarray[i];
  a->inchain = sortarray[i + 1];
  a->inchainRev = sortarray[i - 1];
 }
 a = sortarray[i];
 a->inchain = ((void*)0);
 a->inchainRev = sortarray[i - 1];
 FREE(sortarray);
}
