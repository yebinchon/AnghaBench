
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {TYPE_1__* anEdge; } ;
struct TYPE_11__ {int anEdge; } ;
struct TYPE_10__ {int Oprev; struct TYPE_10__* Onext; TYPE_6__* Org; TYPE_5__* Lface; TYPE_5__* Rface; struct TYPE_10__* Sym; } ;
typedef TYPE_1__ GLUhalfEdge ;
typedef int GLUface ;


 int FALSE ;
 int KillEdge (TYPE_1__*) ;
 int KillFace (TYPE_5__*,TYPE_5__*) ;
 int KillVertex (TYPE_6__*,int *) ;
 int MakeFace (int *,TYPE_1__*,TYPE_5__*) ;
 int Splice (TYPE_1__*,int ) ;
 int TRUE ;
 int * allocFace () ;

int __gl_meshDelete( GLUhalfEdge *eDel )
{
  GLUhalfEdge *eDelSym = eDel->Sym;
  int joiningLoops = FALSE;




  if( eDel->Lface != eDel->Rface ) {

    joiningLoops = TRUE;
    KillFace( eDel->Lface, eDel->Rface );
  }

  if( eDel->Onext == eDel ) {
    KillVertex( eDel->Org, ((void*)0) );
  } else {

    eDel->Rface->anEdge = eDel->Oprev;
    eDel->Org->anEdge = eDel->Onext;

    Splice( eDel, eDel->Oprev );
    if( ! joiningLoops ) {
      GLUface *newFace= allocFace();
      if (newFace == ((void*)0)) return 0;


      MakeFace( newFace, eDel, eDel->Lface );
    }
  }




  if( eDelSym->Onext == eDelSym ) {
    KillVertex( eDelSym->Org, ((void*)0) );
    KillFace( eDelSym->Lface, ((void*)0) );
  } else {

    eDel->Lface->anEdge = eDelSym->Oprev;
    eDelSym->Org->anEdge = eDelSym->Onext;
    Splice( eDelSym, eDelSym->Oprev );
  }


  KillEdge( eDel );

  return 1;
}
