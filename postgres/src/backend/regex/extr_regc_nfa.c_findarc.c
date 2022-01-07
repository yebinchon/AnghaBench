
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct state {struct arc* outs; } ;
struct arc {int type; scalar_t__ co; struct arc* outchain; } ;
typedef scalar_t__ color ;



__attribute__((used)) static struct arc *
findarc(struct state *s,
  int type,
  color co)
{
 struct arc *a;

 for (a = s->outs; a != ((void*)0); a = a->outchain)
  if (a->type == type && a->co == co)
   return a;
 return ((void*)0);
}
