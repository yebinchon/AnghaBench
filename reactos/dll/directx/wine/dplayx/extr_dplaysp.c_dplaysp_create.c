
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * lpVtbl; } ;
struct TYPE_5__ {int ref; TYPE_2__ IDirectPlaySP_iface; int * dplay; } ;
typedef int REFIID ;
typedef TYPE_1__ IDirectPlaySPImpl ;
typedef int IDirectPlayImpl ;
typedef int HRESULT ;


 int DPERR_OUTOFMEMORY ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 TYPE_1__* HeapAlloc (int ,int ,int) ;
 int IDirectPlaySP_QueryInterface (TYPE_2__*,int ,void**) ;
 int IDirectPlaySP_Release (TYPE_2__*) ;
 int TRACE (char*,int ,void**) ;
 int debugstr_guid (int ) ;
 int directPlaySPVT ;

HRESULT dplaysp_create( REFIID riid, void **ppv, IDirectPlayImpl *dp )
{
  IDirectPlaySPImpl *obj;
  HRESULT hr;

  TRACE( "(%s, %p)\n", debugstr_guid( riid ), ppv );

  *ppv = ((void*)0);
  obj = HeapAlloc( GetProcessHeap(), HEAP_ZERO_MEMORY, sizeof( *obj ) );
  if ( !obj )
    return DPERR_OUTOFMEMORY;

  obj->IDirectPlaySP_iface.lpVtbl = &directPlaySPVT;
  obj->ref = 1;
  obj->dplay = dp;

  hr = IDirectPlaySP_QueryInterface( &obj->IDirectPlaySP_iface, riid, ppv );
  IDirectPlaySP_Release( &obj->IDirectPlaySP_iface );

  return hr;
}
