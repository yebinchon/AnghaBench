
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vars {size_t nmatch; TYPE_1__* pmatch; } ;
struct subre {int subno; } ;
typedef int chr ;
struct TYPE_2__ {void* rm_eo; void* rm_so; } ;


 int MDEBUG (char*) ;
 void* OFF (int *) ;
 int assert (int) ;

__attribute__((used)) static void
subset(struct vars *v,
    struct subre *sub,
    chr *begin,
    chr *end)
{
 int n = sub->subno;

 assert(n > 0);
 if ((size_t) n >= v->nmatch)
  return;

 MDEBUG(("setting %d\n", n));
 v->pmatch[n].rm_so = OFF(begin);
 v->pmatch[n].rm_eo = OFF(end);
}
