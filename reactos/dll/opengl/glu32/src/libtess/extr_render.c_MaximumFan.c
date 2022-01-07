
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct FaceCount {TYPE_1__* eStart; int size; int * member_2; int * member_1; int member_0; } ;
struct TYPE_3__ {int Rface; struct TYPE_3__* Oprev; int Lface; struct TYPE_3__* Onext; } ;
typedef TYPE_1__ GLUhalfEdge ;
typedef int GLUface ;


 int AddToTrail (int ,int *) ;
 int FreeTrail (int *) ;
 int Marked (int ) ;
 int RenderFan ;

__attribute__((used)) static struct FaceCount MaximumFan( GLUhalfEdge *eOrig )
{




  struct FaceCount newFace = { 0, ((void*)0), &RenderFan };
  GLUface *trail = ((void*)0);
  GLUhalfEdge *e;

  for( e = eOrig; ! Marked( e->Lface ); e = e->Onext ) {
    AddToTrail( e->Lface, trail );
    ++newFace.size;
  }
  for( e = eOrig; ! Marked( e->Rface ); e = e->Oprev ) {
    AddToTrail( e->Rface, trail );
    ++newFace.size;
  }
  newFace.eStart = e;

  FreeTrail( trail );
  return newFace;
}
