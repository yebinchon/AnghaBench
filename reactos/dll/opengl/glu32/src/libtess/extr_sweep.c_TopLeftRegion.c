
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_14__ {TYPE_2__* eUp; } ;
struct TYPE_13__ {TYPE_1__* eUp; scalar_t__ fixUpperEdge; } ;
struct TYPE_12__ {int Sym; } ;
struct TYPE_11__ {int Lnext; int * Org; } ;
typedef int GLUvertex ;
typedef int GLUhalfEdge ;
typedef TYPE_3__ ActiveRegion ;


 int FixUpperEdge (TYPE_3__*,int *) ;
 TYPE_3__* RegionAbove (TYPE_3__*) ;
 TYPE_6__* RegionBelow (TYPE_3__*) ;
 int * __gl_meshConnect (int ,int ) ;

__attribute__((used)) static ActiveRegion *TopLeftRegion( ActiveRegion *reg )
{
  GLUvertex *org = reg->eUp->Org;
  GLUhalfEdge *e;


  do {
    reg = RegionAbove( reg );
  } while( reg->eUp->Org == org );




  if( reg->fixUpperEdge ) {
    e = __gl_meshConnect( RegionBelow(reg)->eUp->Sym, reg->eUp->Lnext );
    if (e == ((void*)0)) return ((void*)0);
    if ( !FixUpperEdge( reg, e ) ) return ((void*)0);
    reg = RegionAbove( reg );
  }
  return reg;
}
