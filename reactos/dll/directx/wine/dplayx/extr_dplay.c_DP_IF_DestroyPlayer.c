
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_17__ {int bAnsi; void* idPlayer; TYPE_4__* This; } ;
struct TYPE_16__ {int lpISP; scalar_t__ dwFlags; void* idPlayer; } ;
struct TYPE_15__ {TYPE_3__* dp2; int IDirectPlay4_iface; } ;
struct TYPE_13__ {TYPE_1__* lpCB; int lpISP; } ;
struct TYPE_14__ {scalar_t__ connectionInitialized; TYPE_2__ spData; } ;
struct TYPE_12__ {int (* DeletePlayer ) (TYPE_5__*) ;} ;
typedef TYPE_4__ IDirectPlayImpl ;
typedef int HRESULT ;
typedef TYPE_5__ DPSP_DELETEPLAYERDATA ;
typedef void* DPID ;
typedef TYPE_6__ DPFAGContext ;
typedef int BOOL ;


 int DPENUMGROUPS_ALL ;
 int DPERR_INVALIDPLAYER ;
 int DPERR_UNINITIALIZED ;
 int DP_DeletePlayer (TYPE_4__*,void*) ;
 int * DP_FindPlayer (TYPE_4__*,void*) ;
 int DP_OK ;
 int FIXME (char*,...) ;
 int IDirectPlayX_EnumGroups (int *,int *,int ,TYPE_6__*,int ) ;
 scalar_t__ NO_PROVIDER ;
 int cbDeletePlayerFromAllGroups ;
 int stub1 (TYPE_5__*) ;

__attribute__((used)) static HRESULT DP_IF_DestroyPlayer( IDirectPlayImpl *This, void *lpMsgHdr, DPID idPlayer,
        BOOL bAnsi )
{
  DPFAGContext cbContext;

  FIXME( "(%p)->(%p,0x%08x,%u): semi stub\n",
         This, lpMsgHdr, idPlayer, bAnsi );

  if( This->dp2->connectionInitialized == NO_PROVIDER )
  {
    return DPERR_UNINITIALIZED;
  }

  if( DP_FindPlayer( This, idPlayer ) == ((void*)0) )
  {
    return DPERR_INVALIDPLAYER;
  }



  cbContext.This = This;
  cbContext.idPlayer = idPlayer;
  cbContext.bAnsi = bAnsi;



  IDirectPlayX_EnumGroups( &This->IDirectPlay4_iface, ((void*)0), cbDeletePlayerFromAllGroups, &cbContext,
          DPENUMGROUPS_ALL );


  DP_DeletePlayer( This, idPlayer );


  if( This->dp2->spData.lpCB->DeletePlayer )
  {
    DPSP_DELETEPLAYERDATA data;

    FIXME( "data.dwFlags is incorrect\n" );

    data.idPlayer = idPlayer;
    data.dwFlags = 0;
    data.lpISP = This->dp2->spData.lpISP;

    (*This->dp2->spData.lpCB->DeletePlayer)( &data );
  }

  FIXME( "Send a DELETEPLAYERORGROUP msg\n" );

  return DP_OK;
}
