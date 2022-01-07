
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_9__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {void* data; } ;
struct TYPE_11__ {TYPE_9__* Org; } ;
struct TYPE_10__ {int env; } ;
typedef double GLfloat ;
typedef TYPE_1__ GLUtesselator ;
typedef TYPE_2__ GLUhalfEdge ;


 int CallCombine (TYPE_1__*,TYPE_9__*,void**,double*,int ) ;
 int FALSE ;
 int __gl_meshSplice (TYPE_2__*,TYPE_2__*) ;
 int longjmp (int ,int) ;

__attribute__((used)) static void SpliceMergeVertices( GLUtesselator *tess, GLUhalfEdge *e1,
     GLUhalfEdge *e2 )




{
  void *data[4] = { ((void*)0), ((void*)0), ((void*)0), ((void*)0) };
  GLfloat weights[4] = { 0.5, 0.5, 0.0, 0.0 };

  data[0] = e1->Org->data;
  data[1] = e2->Org->data;
  CallCombine( tess, e1->Org, data, weights, FALSE );
  if ( !__gl_meshSplice( e1, e2 ) ) longjmp(tess->env,1);
}
