
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {TYPE_2__* anEdge; struct TYPE_9__* next; } ;
struct TYPE_8__ {int Onext; struct TYPE_8__* Lnext; } ;
struct TYPE_7__ {TYPE_3__ fHead; } ;
typedef TYPE_1__ GLUmesh ;
typedef TYPE_2__ GLUhalfEdge ;
typedef TYPE_3__ GLUface ;


 int AddWinding (int ,TYPE_2__*) ;
 int __gl_meshDelete (TYPE_2__*) ;
 int assert (int) ;

__attribute__((used)) static int RemoveDegenerateFaces( GLUmesh *mesh )
{
  GLUface *f, *fNext;
  GLUhalfEdge *e;


  for( f = mesh->fHead.next; f != &mesh->fHead; f = fNext ) {
    fNext = f->next;
    e = f->anEdge;
    assert( e->Lnext != e );

    if( e->Lnext->Lnext == e ) {

      AddWinding( e->Onext, e );
      if ( !__gl_meshDelete( e ) ) return 0;
    }
  }
  return 1;
}
