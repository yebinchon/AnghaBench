
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int winding; TYPE_2__* Lface; TYPE_1__* Rface; struct TYPE_10__* next; } ;
struct TYPE_9__ {TYPE_4__ eHead; } ;
struct TYPE_8__ {scalar_t__ inside; } ;
struct TYPE_7__ {scalar_t__ inside; } ;
typedef int GLboolean ;
typedef TYPE_3__ GLUmesh ;
typedef TYPE_4__ GLUhalfEdge ;


 int __gl_meshDelete (TYPE_4__*) ;

int __gl_meshSetWindingNumber( GLUmesh *mesh, int value,
           GLboolean keepOnlyBoundary )
{
  GLUhalfEdge *e, *eNext;

  for( e = mesh->eHead.next; e != &mesh->eHead; e = eNext ) {
    eNext = e->next;
    if( e->Rface->inside != e->Lface->inside ) {


      e->winding = (e->Lface->inside) ? value : -value;
    } else {


      if( ! keepOnlyBoundary ) {
 e->winding = 0;
      } else {
 if ( !__gl_meshDelete( e ) ) return 0;
      }
    }
  }
  return 1;
}
