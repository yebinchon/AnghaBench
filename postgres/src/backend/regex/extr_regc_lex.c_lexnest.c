
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vars {int const* stop; int const* now; int const* savestop; int const* savenow; } ;
typedef int chr ;


 int assert (int ) ;

__attribute__((used)) static void
lexnest(struct vars *v,
  const chr *beginp,
  const chr *endp)
{
 assert(v->savenow == ((void*)0));
 v->savenow = v->now;
 v->savestop = v->stop;
 v->now = beginp;
 v->stop = endp;
}
