
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__* coords; void* data; } ;
typedef int GLfloat ;
typedef TYPE_1__ GLUvertex ;
typedef int GLUtesselator ;


 int CallCombine (int *,TYPE_1__*,void**,int *,int ) ;
 int TRUE ;
 int VertexWeights (TYPE_1__*,TYPE_1__*,TYPE_1__*,int *) ;

__attribute__((used)) static void GetIntersectData( GLUtesselator *tess, GLUvertex *isect,
       GLUvertex *orgUp, GLUvertex *dstUp,
       GLUvertex *orgLo, GLUvertex *dstLo )





{
  void *data[4];
  GLfloat weights[4];

  data[0] = orgUp->data;
  data[1] = dstUp->data;
  data[2] = orgLo->data;
  data[3] = dstLo->data;

  isect->coords[0] = isect->coords[1] = isect->coords[2] = 0;
  VertexWeights( isect, orgUp, dstUp, &weights[0] );
  VertexWeights( isect, orgLo, dstLo, &weights[2] );

  CallCombine( tess, isect, data, weights, TRUE );
}
