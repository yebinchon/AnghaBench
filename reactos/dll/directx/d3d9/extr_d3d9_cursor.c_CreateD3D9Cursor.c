
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct _Direct3DSwapChain9_INT {int dwWidth; int dwHeight; } ;
struct _Direct3DDevice9_INT {int dummy; } ;
struct TYPE_3__ {int dwWidth; int dwHeight; struct _Direct3DSwapChain9_INT* pSwapChain; struct _Direct3DDevice9_INT* pBaseDevice; } ;
typedef int LPVOID ;
typedef TYPE_1__ D3D9Cursor ;


 int AlignedAlloc (int *,int) ;
 int DPRINT1 (char*) ;
 scalar_t__ FAILED (int ) ;

D3D9Cursor* CreateD3D9Cursor(struct _Direct3DDevice9_INT* pBaseDevice, struct _Direct3DSwapChain9_INT* pSwapChain)
{
    D3D9Cursor* pCursor;

    if (FAILED(AlignedAlloc((LPVOID*)&pCursor, sizeof(D3D9Cursor))))
    {
        DPRINT1("Failed to allocate D3D9Cursor");
        return ((void*)0);
    }

    pCursor->pBaseDevice = pBaseDevice;
    pCursor->pSwapChain = pSwapChain;
    pCursor->dwWidth = pSwapChain->dwWidth / 2;
    pCursor->dwHeight = pSwapChain->dwHeight / 2;

    return pCursor;
}
