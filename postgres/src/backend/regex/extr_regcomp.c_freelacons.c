
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct subre {int cnfa; } ;


 int FREE (struct subre*) ;
 int NULLCNFA (int ) ;
 int assert (int) ;
 int freecnfa (int *) ;

__attribute__((used)) static void
freelacons(struct subre *subs,
     int n)
{
 struct subre *sub;
 int i;

 assert(n > 0);
 for (sub = subs + 1, i = n - 1; i > 0; sub++, i--)
  if (!NULLCNFA(sub->cnfa))
   freecnfa(&sub->cnfa);
 FREE(subs);
}
