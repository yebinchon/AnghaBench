
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct FaceCount {long size; TYPE_1__* eStart; int * member_2; int * member_1; int member_0; } ;
struct TYPE_3__ {struct TYPE_3__* Onext; struct TYPE_3__* Sym; int Rface; struct TYPE_3__* Oprev; struct TYPE_3__* Dnext; int Lface; struct TYPE_3__* Dprev; } ;
typedef TYPE_1__ GLUhalfEdge ;
typedef int GLUface ;


 int AddToTrail (int ,int *) ;
 int FreeTrail (int *) ;
 scalar_t__ IsEven (long) ;
 scalar_t__ Marked (int ) ;
 int RenderStrip ;

__attribute__((used)) static struct FaceCount MaximumStrip( GLUhalfEdge *eOrig )
{
  struct FaceCount newFace = { 0, ((void*)0), &RenderStrip };
  long headSize = 0, tailSize = 0;
  GLUface *trail = ((void*)0);
  GLUhalfEdge *e, *eTail, *eHead;

  for( e = eOrig; ! Marked( e->Lface ); ++tailSize, e = e->Onext ) {
    AddToTrail( e->Lface, trail );
    ++tailSize;
    e = e->Dprev;
    if( Marked( e->Lface )) break;
    AddToTrail( e->Lface, trail );
  }
  eTail = e;

  for( e = eOrig; ! Marked( e->Rface ); ++headSize, e = e->Dnext ) {
    AddToTrail( e->Rface, trail );
    ++headSize;
    e = e->Oprev;
    if( Marked( e->Rface )) break;
    AddToTrail( e->Rface, trail );
  }
  eHead = e;

  newFace.size = tailSize + headSize;
  if( IsEven( tailSize )) {
    newFace.eStart = eTail->Sym;
  } else if( IsEven( headSize )) {
    newFace.eStart = eHead;
  } else {



    --newFace.size;
    newFace.eStart = eHead->Onext;
  }

  FreeTrail( trail );
  return newFace;
}
