
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_17__ {int dwAddressSize; int * lpAddress; TYPE_6__* lpPlayerName; TYPE_5__* lpSessionDesc; } ;
struct TYPE_14__ {void* lpszLongNameA; scalar_t__ lpszLongName; } ;
struct TYPE_13__ {void* lpszShortNameA; } ;
struct TYPE_16__ {TYPE_4__ u2; TYPE_3__ u1; } ;
struct TYPE_12__ {void* lpszPasswordA; } ;
struct TYPE_11__ {void* lpszSessionNameA; } ;
struct TYPE_15__ {TYPE_2__ u2; TYPE_1__ u1; } ;
typedef void* LPSTR ;
typedef TYPE_5__* LPDPSESSIONDESC2 ;
typedef TYPE_6__* LPDPNAME ;
typedef TYPE_7__* LPDPLCONNECTION ;
typedef int DPSESSIONDESC2 ;
typedef int DPNAME ;
typedef TYPE_7__ DPLCONNECTION ;
typedef int BYTE ;


 int CopyMemory (int *,int *,int ) ;
 int strcpy (void*,void*) ;
 scalar_t__ strlen (void*) ;

__attribute__((used)) static void DPLAYX_CopyConnStructA( LPDPLCONNECTION dest, const DPLCONNECTION *src )
{
  BYTE* lpStartOfFreeSpace;

  *dest = *src;

  lpStartOfFreeSpace = ((BYTE*)dest) + sizeof( DPLCONNECTION );


  if( src->lpSessionDesc )
  {
    dest->lpSessionDesc = (LPDPSESSIONDESC2)lpStartOfFreeSpace;
    lpStartOfFreeSpace += sizeof( DPSESSIONDESC2 );
    *dest->lpSessionDesc = *src->lpSessionDesc;


    if( src->lpSessionDesc->u1.lpszSessionNameA )
    {
      strcpy( (LPSTR)lpStartOfFreeSpace, src->lpSessionDesc->u1.lpszSessionNameA );
      dest->lpSessionDesc->u1.lpszSessionNameA = (LPSTR)lpStartOfFreeSpace;
      lpStartOfFreeSpace +=
        strlen( dest->lpSessionDesc->u1.lpszSessionNameA ) + 1;
    }

    if( src->lpSessionDesc->u2.lpszPasswordA )
    {
      strcpy( (LPSTR)lpStartOfFreeSpace, src->lpSessionDesc->u2.lpszPasswordA );
      dest->lpSessionDesc->u2.lpszPasswordA = (LPSTR)lpStartOfFreeSpace;
      lpStartOfFreeSpace +=
        strlen( dest->lpSessionDesc->u2.lpszPasswordA ) + 1;
    }
  }


  if( src->lpPlayerName )
  {
    dest->lpPlayerName = (LPDPNAME)lpStartOfFreeSpace;
    lpStartOfFreeSpace += sizeof( DPNAME );
    *dest->lpPlayerName = *src->lpPlayerName;

    if( src->lpPlayerName->u1.lpszShortNameA )
    {
      strcpy( (LPSTR)lpStartOfFreeSpace, src->lpPlayerName->u1.lpszShortNameA );
      dest->lpPlayerName->u1.lpszShortNameA = (LPSTR)lpStartOfFreeSpace;
      lpStartOfFreeSpace +=
        strlen( dest->lpPlayerName->u1.lpszShortNameA ) + 1;
    }

    if( src->lpPlayerName->u2.lpszLongNameA )
    {
      strcpy( (LPSTR)lpStartOfFreeSpace, src->lpPlayerName->u2.lpszLongNameA );
      dest->lpPlayerName->u2.lpszLongNameA = (LPSTR)lpStartOfFreeSpace;
      lpStartOfFreeSpace +=
        strlen( (LPSTR)dest->lpPlayerName->u2.lpszLongName ) + 1 ;
    }

  }


  if( src->lpAddress )
  {
    dest->lpAddress = lpStartOfFreeSpace;
    CopyMemory( lpStartOfFreeSpace, src->lpAddress, src->dwAddressSize );

  }
}
