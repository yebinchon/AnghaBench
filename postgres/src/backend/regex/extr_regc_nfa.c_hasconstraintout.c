
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct state {struct arc* outs; } ;
struct arc {struct arc* outchain; } ;


 scalar_t__ isconstraintarc (struct arc*) ;

__attribute__((used)) static int
hasconstraintout(struct state *s)
{
 struct arc *a;

 for (a = s->outs; a != ((void*)0); a = a->outchain)
 {
  if (isconstraintarc(a))
   return 1;
 }
 return 0;
}
