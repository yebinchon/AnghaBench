
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {struct TYPE_11__* next; struct TYPE_11__* Sym; struct TYPE_11__* Lnext; int Dst; int Org; } ;
struct TYPE_10__ {int env; TYPE_1__* mesh; } ;
struct TYPE_9__ {TYPE_3__ eHead; } ;
typedef TYPE_2__ GLUtesselator ;
typedef TYPE_3__ GLUhalfEdge ;


 int SpliceMergeVertices (TYPE_2__*,TYPE_3__*,TYPE_3__*) ;
 scalar_t__ VertEq (int ,int ) ;
 int __gl_meshDelete (TYPE_3__*) ;
 int longjmp (int ,int) ;

__attribute__((used)) static void RemoveDegenerateEdges( GLUtesselator *tess )



{
  GLUhalfEdge *e, *eNext, *eLnext;
  GLUhalfEdge *eHead = &tess->mesh->eHead;


  for( e = eHead->next; e != eHead; e = eNext ) {
    eNext = e->next;
    eLnext = e->Lnext;

    if( VertEq( e->Org, e->Dst ) && e->Lnext->Lnext != e ) {


      SpliceMergeVertices( tess, eLnext, e );
      if ( !__gl_meshDelete( e ) ) longjmp(tess->env,1);
      e = eLnext;
      eLnext = e->Lnext;
    }
    if( eLnext->Lnext == e ) {


      if( eLnext != e ) {
 if( eLnext == eNext || eLnext == eNext->Sym ) { eNext = eNext->next; }
 if ( !__gl_meshDelete( eLnext ) ) longjmp(tess->env,1);
      }
      if( e == eNext || e == eNext->Sym ) { eNext = eNext->next; }
      if ( !__gl_meshDelete( e ) ) longjmp(tess->env,1);
    }
  }
}
