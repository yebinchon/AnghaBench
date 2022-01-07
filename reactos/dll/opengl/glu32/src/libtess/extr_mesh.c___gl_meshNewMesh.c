
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {void* inside; void* marked; int * trail; int * data; int * anEdge; struct TYPE_9__* prev; struct TYPE_9__* next; } ;
struct TYPE_8__ {int * activeRegion; scalar_t__ winding; int * Lface; int * Org; int * Lnext; int * Onext; struct TYPE_8__* Sym; struct TYPE_8__* next; } ;
struct TYPE_6__ {int * data; int * anEdge; struct TYPE_6__* prev; struct TYPE_6__* next; } ;
struct TYPE_7__ {TYPE_3__ eHeadSym; TYPE_3__ eHead; TYPE_4__ fHead; TYPE_1__ vHead; } ;
typedef TYPE_1__ GLUvertex ;
typedef TYPE_2__ GLUmesh ;
typedef TYPE_3__ GLUhalfEdge ;
typedef TYPE_4__ GLUface ;


 void* FALSE ;
 scalar_t__ memAlloc (int) ;

GLUmesh *__gl_meshNewMesh( void )
{
  GLUvertex *v;
  GLUface *f;
  GLUhalfEdge *e;
  GLUhalfEdge *eSym;
  GLUmesh *mesh = (GLUmesh *)memAlloc( sizeof( GLUmesh ));
  if (mesh == ((void*)0)) {
     return ((void*)0);
  }

  v = &mesh->vHead;
  f = &mesh->fHead;
  e = &mesh->eHead;
  eSym = &mesh->eHeadSym;

  v->next = v->prev = v;
  v->anEdge = ((void*)0);
  v->data = ((void*)0);

  f->next = f->prev = f;
  f->anEdge = ((void*)0);
  f->data = ((void*)0);
  f->trail = ((void*)0);
  f->marked = FALSE;
  f->inside = FALSE;

  e->next = e;
  e->Sym = eSym;
  e->Onext = ((void*)0);
  e->Lnext = ((void*)0);
  e->Org = ((void*)0);
  e->Lface = ((void*)0);
  e->winding = 0;
  e->activeRegion = ((void*)0);

  eSym->next = eSym;
  eSym->Sym = e;
  eSym->Onext = ((void*)0);
  eSym->Lnext = ((void*)0);
  eSym->Org = ((void*)0);
  eSym->Lface = ((void*)0);
  eSym->winding = 0;
  eSym->activeRegion = ((void*)0);

  return mesh;
}
