
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {double* coords; } ;
typedef double GLfloat ;
typedef double GLdouble ;
typedef TYPE_1__ GLUvertex ;


 double VertL1dist (TYPE_1__*,TYPE_1__*) ;

__attribute__((used)) static void VertexWeights( GLUvertex *isect, GLUvertex *org, GLUvertex *dst,
      GLfloat *weights )







{
  GLdouble t1 = VertL1dist( org, isect );
  GLdouble t2 = VertL1dist( dst, isect );

  weights[0] = 0.5 * t2 / (t1 + t2);
  weights[1] = 0.5 * t1 / (t1 + t2);
  isect->coords[0] += weights[0]*org->coords[0] + weights[1]*dst->coords[0];
  isect->coords[1] += weights[0]*org->coords[1] + weights[1]*dst->coords[1];
  isect->coords[2] += weights[0]*org->coords[2] + weights[1]*dst->coords[2];
}
