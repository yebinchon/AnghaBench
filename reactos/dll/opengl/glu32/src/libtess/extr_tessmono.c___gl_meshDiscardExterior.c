
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int inside; struct TYPE_6__* next; } ;
struct TYPE_5__ {TYPE_2__ fHead; } ;
typedef TYPE_1__ GLUmesh ;
typedef TYPE_2__ GLUface ;


 int __gl_meshZapFace (TYPE_2__*) ;

void __gl_meshDiscardExterior( GLUmesh *mesh )
{
  GLUface *f, *next;


  for( f = mesh->fHead.next; f != &mesh->fHead; f = next ) {

    next = f->next;
    if( ! f->inside ) {
      __gl_meshZapFace( f );
    }
  }
}
