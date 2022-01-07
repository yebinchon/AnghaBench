
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_1__ ;


struct TYPE_25__ {int s; int t; } ;
typedef int GLdouble ;
typedef TYPE_1__ GLUvertex ;


 int EdgeEval (TYPE_1__*,TYPE_1__*,TYPE_1__*) ;
 int EdgeSign (TYPE_1__*,TYPE_1__*,TYPE_1__*) ;
 void* Interpolate (int ,int,int ,int) ;
 int Swap (TYPE_1__*,TYPE_1__*) ;
 int TransEval (TYPE_1__*,TYPE_1__*,TYPE_1__*) ;
 scalar_t__ TransLeq (TYPE_1__*,TYPE_1__*) ;
 int TransSign (TYPE_1__*,TYPE_1__*,TYPE_1__*) ;
 scalar_t__ VertLeq (TYPE_1__*,TYPE_1__*) ;

void __gl_edgeIntersect( GLUvertex *o1, GLUvertex *d1,
    GLUvertex *o2, GLUvertex *d2,
    GLUvertex *v )




{
  GLdouble z1, z2;
  if( ! VertLeq( o1, d1 )) { Swap( o1, d1 ); }
  if( ! VertLeq( o2, d2 )) { Swap( o2, d2 ); }
  if( ! VertLeq( o1, o2 )) { Swap( o1, o2 ); Swap( d1, d2 ); }

  if( ! VertLeq( o2, d1 )) {

    v->s = (o2->s + d1->s) / 2;
  } else if( VertLeq( d1, d2 )) {

    z1 = EdgeEval( o1, o2, d1 );
    z2 = EdgeEval( o2, d1, d2 );
    if( z1+z2 < 0 ) { z1 = -z1; z2 = -z2; }
    v->s = Interpolate( z1, o2->s, z2, d1->s );
  } else {

    z1 = EdgeSign( o1, o2, d1 );
    z2 = -EdgeSign( o1, d2, d1 );
    if( z1+z2 < 0 ) { z1 = -z1; z2 = -z2; }
    v->s = Interpolate( z1, o2->s, z2, d2->s );
  }



  if( ! TransLeq( o1, d1 )) { Swap( o1, d1 ); }
  if( ! TransLeq( o2, d2 )) { Swap( o2, d2 ); }
  if( ! TransLeq( o1, o2 )) { Swap( o1, o2 ); Swap( d1, d2 ); }

  if( ! TransLeq( o2, d1 )) {

    v->t = (o2->t + d1->t) / 2;
  } else if( TransLeq( d1, d2 )) {

    z1 = TransEval( o1, o2, d1 );
    z2 = TransEval( o2, d1, d2 );
    if( z1+z2 < 0 ) { z1 = -z1; z2 = -z2; }
    v->t = Interpolate( z1, o2->t, z2, d1->t );
  } else {

    z1 = TransSign( o1, o2, d1 );
    z2 = -TransSign( o1, d2, d1 );
    if( z1+z2 < 0 ) { z1 = -z1; z2 = -z2; }
    v->t = Interpolate( z1, o2->t, z2, d2->t );
  }
}
