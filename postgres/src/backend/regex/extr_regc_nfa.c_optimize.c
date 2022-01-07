
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfa {int dummy; } ;
typedef int FILE ;


 long analyze (struct nfa*) ;
 int cleanup (struct nfa*) ;
 int dumpnfa (struct nfa*,int *) ;
 int fixconstraintloops (struct nfa*,int *) ;
 int fixempties (struct nfa*,int *) ;
 int fprintf (int *,char*) ;
 int pullback (struct nfa*,int *) ;
 int pushfwd (struct nfa*,int *) ;

__attribute__((used)) static long
optimize(struct nfa *nfa,
   FILE *f)
{






 cleanup(nfa);






 fixempties(nfa, f);




 fixconstraintloops(nfa, f);
 pullback(nfa, f);
 pushfwd(nfa, f);




 cleanup(nfa);




 return analyze(nfa);
}
