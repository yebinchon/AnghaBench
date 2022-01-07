
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ s; scalar_t__ t; } ;
typedef scalar_t__ GLdouble ;
typedef TYPE_1__ GLUvertex ;


 scalar_t__ VertLeq (TYPE_1__*,TYPE_1__*) ;
 int assert (int) ;

GLdouble __gl_edgeSign( GLUvertex *u, GLUvertex *v, GLUvertex *w )
{




  GLdouble gapL, gapR;

  assert( VertLeq( u, v ) && VertLeq( v, w ));

  gapL = v->s - u->s;
  gapR = w->s - v->s;

  if( gapL + gapR > 0 ) {
    return (v->t - w->t) * gapL + (v->t - u->t) * gapR;
  }

  return 0;
}
