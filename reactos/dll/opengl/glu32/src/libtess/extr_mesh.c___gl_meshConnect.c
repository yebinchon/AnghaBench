
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_8__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_14__ {TYPE_1__* anEdge; } ;
struct TYPE_13__ {TYPE_8__* Lface; int Org; int Dst; struct TYPE_13__* Lnext; struct TYPE_13__* Sym; } ;
typedef TYPE_1__ GLUhalfEdge ;
typedef int GLUface ;


 int FALSE ;
 int KillFace (TYPE_8__*,TYPE_8__*) ;
 TYPE_1__* MakeEdge (TYPE_1__*) ;
 int MakeFace (int *,TYPE_1__*,TYPE_8__*) ;
 int Splice (TYPE_1__*,TYPE_1__*) ;
 int TRUE ;
 int * allocFace () ;

GLUhalfEdge *__gl_meshConnect( GLUhalfEdge *eOrg, GLUhalfEdge *eDst )
{
  GLUhalfEdge *eNewSym;
  int joiningLoops = FALSE;
  GLUhalfEdge *eNew = MakeEdge( eOrg );
  if (eNew == ((void*)0)) return ((void*)0);

  eNewSym = eNew->Sym;

  if( eDst->Lface != eOrg->Lface ) {

    joiningLoops = TRUE;
    KillFace( eDst->Lface, eOrg->Lface );
  }


  Splice( eNew, eOrg->Lnext );
  Splice( eNewSym, eDst );


  eNew->Org = eOrg->Dst;
  eNewSym->Org = eDst->Org;
  eNew->Lface = eNewSym->Lface = eOrg->Lface;


  eOrg->Lface->anEdge = eNewSym;

  if( ! joiningLoops ) {
    GLUface *newFace= allocFace();
    if (newFace == ((void*)0)) return ((void*)0);


    MakeFace( newFace, eNew, eOrg->Lface );
  }
  return eNew;
}
