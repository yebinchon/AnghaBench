
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * lpVtbl; } ;
struct TYPE_5__ {int ref; TYPE_2__ IDPLobbySP_iface; int * dplay; } ;
typedef int REFIID ;
typedef int IDirectPlayImpl ;
typedef TYPE_1__ IDPLobbySPImpl ;
typedef int HRESULT ;


 int DPERR_OUTOFMEMORY ;
 int GetProcessHeap () ;
 TYPE_1__* HeapAlloc (int ,int ,int) ;
 int IDPLobbySP_QueryInterface (TYPE_2__*,int ,void**) ;
 int IDPLobbySP_Release (TYPE_2__*) ;
 int TRACE (char*,int ,void**) ;
 int debugstr_guid (int ) ;
 int dpLobbySPVT ;

HRESULT dplobbysp_create( REFIID riid, void **ppv, IDirectPlayImpl *dp )
{
  IDPLobbySPImpl *obj;
  HRESULT hr;

  TRACE( "(%s, %p)\n", debugstr_guid( riid ), ppv );

  *ppv = ((void*)0);
  obj = HeapAlloc( GetProcessHeap(), 0, sizeof( *obj ) );
  if ( !obj )
    return DPERR_OUTOFMEMORY;

  obj->IDPLobbySP_iface.lpVtbl = &dpLobbySPVT;
  obj->ref = 1;
  obj->dplay = dp;

  hr = IDPLobbySP_QueryInterface( &obj->IDPLobbySP_iface, riid, ppv );
  IDPLobbySP_Release( &obj->IDPLobbySP_iface );

  return hr;
}
