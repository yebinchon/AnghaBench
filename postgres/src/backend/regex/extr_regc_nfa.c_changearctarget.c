
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct state {int nins; struct arc* ins; } ;
struct arc {struct arc* inchainRev; struct arc* inchain; struct state* to; } ;


 int assert (int) ;

__attribute__((used)) static void
changearctarget(struct arc *a, struct state *newto)
{
 struct state *oldto = a->to;
 struct arc *predecessor;

 assert(oldto != newto);


 assert(oldto != ((void*)0));
 predecessor = a->inchainRev;
 if (predecessor == ((void*)0))
 {
  assert(oldto->ins == a);
  oldto->ins = a->inchain;
 }
 else
 {
  assert(predecessor->inchain == a);
  predecessor->inchain = a->inchain;
 }
 if (a->inchain != ((void*)0))
 {
  assert(a->inchain->inchainRev == a);
  a->inchain->inchainRev = predecessor;
 }
 oldto->nins--;

 a->to = newto;


 a->inchain = newto->ins;
 a->inchainRev = ((void*)0);
 if (newto->ins)
  newto->ins->inchainRev = a;
 newto->ins = a;
 newto->nins++;
}
