
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* eUp; int fixUpperEdge; } ;
struct TYPE_6__ {TYPE_2__* activeRegion; } ;
typedef TYPE_1__ GLUhalfEdge ;
typedef TYPE_2__ ActiveRegion ;


 int FALSE ;
 int __gl_meshDelete (TYPE_1__*) ;
 int assert (int ) ;

__attribute__((used)) static int FixUpperEdge( ActiveRegion *reg, GLUhalfEdge *newEdge )



{
  assert( reg->fixUpperEdge );
  if ( !__gl_meshDelete( reg->eUp ) ) return 0;
  reg->fixUpperEdge = FALSE;
  reg->eUp = newEdge;
  newEdge->activeRegion = reg;

  return 1;
}
