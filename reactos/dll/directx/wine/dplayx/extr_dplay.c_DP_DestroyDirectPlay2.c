
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_8__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {int lpISP; TYPE_1__* lpCB; } ;
struct TYPE_11__ {TYPE_8__* lpCB; } ;
struct TYPE_15__ {scalar_t__ hEnumSessionThread; scalar_t__ hServiceProvider; scalar_t__ hDPLobbyProvider; TYPE_3__ spData; struct TYPE_15__* lpSessionDesc; TYPE_2__ dplspData; int lpNameServerData; } ;
struct TYPE_14__ {int lpISP; } ;
struct TYPE_13__ {TYPE_8__* dp2; } ;
struct TYPE_10__ {int (* Shutdown ) () ;int (* ShutdownEx ) (TYPE_6__*) ;} ;
typedef TYPE_4__* LPVOID ;
typedef TYPE_4__ IDirectPlayImpl ;
typedef TYPE_6__ DPSP_SHUTDOWNDATA ;
typedef int BOOL ;


 int CloseHandle (scalar_t__) ;
 int FreeLibrary (scalar_t__) ;
 int GetProcessHeap () ;
 int HeapFree (int ,int ,TYPE_8__*) ;
 int IDirectPlaySP_Release (int ) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int NS_DeleteSessionCache (int ) ;
 int TRACE (char*) ;
 int TRUE ;
 int TerminateThread (scalar_t__,int ) ;
 int stub1 (TYPE_6__*) ;
 int stub2 () ;

__attribute__((used)) static BOOL DP_DestroyDirectPlay2( LPVOID lpDP )
{
  IDirectPlayImpl *This = lpDP;

  if( This->dp2->hEnumSessionThread != INVALID_HANDLE_VALUE )
  {
    TerminateThread( This->dp2->hEnumSessionThread, 0 );
    CloseHandle( This->dp2->hEnumSessionThread );
  }


  if( This->dp2->spData.lpCB->ShutdownEx )
  {
    DPSP_SHUTDOWNDATA data;

    TRACE( "Calling SP ShutdownEx\n" );

    data.lpISP = This->dp2->spData.lpISP;

    (*This->dp2->spData.lpCB->ShutdownEx)( &data );
  }
  else if (This->dp2->spData.lpCB->Shutdown )
  {
    TRACE( "Calling obsolete SP Shutdown\n" );
    (*This->dp2->spData.lpCB->Shutdown)();
  }


  if( This->dp2->hServiceProvider != 0 )
  {
    FreeLibrary( This->dp2->hServiceProvider );
  }


  if( This->dp2->hDPLobbyProvider != 0 )
  {
    FreeLibrary( This->dp2->hDPLobbyProvider );
  }



  NS_DeleteSessionCache( This->dp2->lpNameServerData );

  HeapFree( GetProcessHeap(), 0, This->dp2->dplspData.lpCB);
  HeapFree( GetProcessHeap(), 0, This->dp2->lpSessionDesc );

  IDirectPlaySP_Release( This->dp2->spData.lpISP );


  HeapFree( GetProcessHeap(), 0, This->dp2 );

  return TRUE;
}
