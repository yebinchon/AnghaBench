
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int s; int t; } ;
typedef TYPE_1__ GLUvertex ;



int __gl_vertCCW( GLUvertex *u, GLUvertex *v, GLUvertex *w )
{






  return (u->s*(v->t - w->t) + v->s*(w->t - u->t) + w->s*(u->t - v->t)) >= 0;
}
