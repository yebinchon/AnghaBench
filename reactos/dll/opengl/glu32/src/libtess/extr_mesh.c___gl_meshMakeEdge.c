
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {struct TYPE_9__* Sym; } ;
struct TYPE_8__ {int fHead; int vHead; int eHead; } ;
typedef int GLUvertex ;
typedef TYPE_1__ GLUmesh ;
typedef TYPE_2__ GLUhalfEdge ;
typedef int GLUface ;


 TYPE_2__* MakeEdge (int *) ;
 int MakeFace (int *,TYPE_2__*,int *) ;
 int MakeVertex (int *,TYPE_2__*,int *) ;
 int * allocFace () ;
 int * allocVertex () ;
 int memFree (int *) ;

GLUhalfEdge *__gl_meshMakeEdge( GLUmesh *mesh )
{
  GLUvertex *newVertex1= allocVertex();
  GLUvertex *newVertex2= allocVertex();
  GLUface *newFace= allocFace();
  GLUhalfEdge *e;


  if (newVertex1 == ((void*)0) || newVertex2 == ((void*)0) || newFace == ((void*)0)) {
     if (newVertex1 != ((void*)0)) memFree(newVertex1);
     if (newVertex2 != ((void*)0)) memFree(newVertex2);
     if (newFace != ((void*)0)) memFree(newFace);
     return ((void*)0);
  }

  e = MakeEdge( &mesh->eHead );
  if (e == ((void*)0)) {
     memFree(newVertex1);
     memFree(newVertex2);
     memFree(newFace);
     return ((void*)0);
  }

  MakeVertex( newVertex1, e, &mesh->vHead );
  MakeVertex( newVertex2, e->Sym, &mesh->vHead );
  MakeFace( newFace, e, &mesh->fHead );
  return e;
}
