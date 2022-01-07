
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_9__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_16__ {TYPE_1__* anEdge; } ;
struct TYPE_15__ {TYPE_1__* anEdge; } ;
struct TYPE_14__ {TYPE_9__* Lface; TYPE_7__* Org; } ;
typedef int GLUvertex ;
typedef TYPE_1__ GLUhalfEdge ;
typedef int GLUface ;


 int FALSE ;
 int KillFace (TYPE_9__*,TYPE_9__*) ;
 int KillVertex (TYPE_7__*,TYPE_7__*) ;
 int MakeFace (int *,TYPE_1__*,TYPE_9__*) ;
 int MakeVertex (int *,TYPE_1__*,TYPE_7__*) ;
 int Splice (TYPE_1__*,TYPE_1__*) ;
 int TRUE ;
 int * allocFace () ;
 int * allocVertex () ;

int __gl_meshSplice( GLUhalfEdge *eOrg, GLUhalfEdge *eDst )
{
  int joiningLoops = FALSE;
  int joiningVertices = FALSE;

  if( eOrg == eDst ) return 1;

  if( eDst->Org != eOrg->Org ) {

    joiningVertices = TRUE;
    KillVertex( eDst->Org, eOrg->Org );
  }
  if( eDst->Lface != eOrg->Lface ) {

    joiningLoops = TRUE;
    KillFace( eDst->Lface, eOrg->Lface );
  }


  Splice( eDst, eOrg );

  if( ! joiningVertices ) {
    GLUvertex *newVertex= allocVertex();
    if (newVertex == ((void*)0)) return 0;




    MakeVertex( newVertex, eDst, eOrg->Org );
    eOrg->Org->anEdge = eOrg;
  }
  if( ! joiningLoops ) {
    GLUface *newFace= allocFace();
    if (newFace == ((void*)0)) return 0;




    MakeFace( newFace, eDst, eOrg->Lface );
    eOrg->Lface->anEdge = eOrg;
  }

  return 1;
}
