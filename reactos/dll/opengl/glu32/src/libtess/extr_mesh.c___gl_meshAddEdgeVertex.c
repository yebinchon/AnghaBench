
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int Lface; int Org; int Dst; int Lnext; struct TYPE_8__* Sym; } ;
typedef int GLUvertex ;
typedef TYPE_1__ GLUhalfEdge ;


 TYPE_1__* MakeEdge (TYPE_1__*) ;
 int MakeVertex (int *,TYPE_1__*,int ) ;
 int Splice (TYPE_1__*,int ) ;
 int * allocVertex () ;

GLUhalfEdge *__gl_meshAddEdgeVertex( GLUhalfEdge *eOrg )
{
  GLUhalfEdge *eNewSym;
  GLUhalfEdge *eNew = MakeEdge( eOrg );
  if (eNew == ((void*)0)) return ((void*)0);

  eNewSym = eNew->Sym;


  Splice( eNew, eOrg->Lnext );


  eNew->Org = eOrg->Dst;
  {
    GLUvertex *newVertex= allocVertex();
    if (newVertex == ((void*)0)) return ((void*)0);

    MakeVertex( newVertex, eNewSym, eNew->Org );
  }
  eNew->Lface = eNewSym->Lface = eOrg->Lface;

  return eNew;
}
