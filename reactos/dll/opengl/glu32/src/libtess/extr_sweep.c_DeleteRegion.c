
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int nodeUp; TYPE_1__* eUp; scalar_t__ fixUpperEdge; } ;
struct TYPE_8__ {int dict; } ;
struct TYPE_7__ {scalar_t__ winding; int * activeRegion; } ;
typedef TYPE_2__ GLUtesselator ;
typedef TYPE_3__ ActiveRegion ;


 int assert (int) ;
 int dictDelete (int ,int ) ;
 int memFree (TYPE_3__*) ;

__attribute__((used)) static void DeleteRegion( GLUtesselator *tess, ActiveRegion *reg )
{
  if( reg->fixUpperEdge ) {




    assert( reg->eUp->winding == 0 );
  }
  reg->eUp->activeRegion = ((void*)0);
  dictDelete( tess->dict, reg->nodeUp );
  memFree( reg );
}
