
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct state {struct arc* outs; } ;
struct arc {scalar_t__ type; struct arc* outchain; } ;


 scalar_t__ EMPTY ;

__attribute__((used)) static int
hasnonemptyout(struct state *s)
{
 struct arc *a;

 for (a = s->outs; a != ((void*)0); a = a->outchain)
 {
  if (a->type != EMPTY)
   return 1;
 }
 return 0;
}
