
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ULONG_PTR ;
typedef int * LPDIRECT3DDEVICE9_INT ;
typedef int * LPDIRECT3DDEVICE9 ;


 int DIRECT3DDEVICE9_INT ;
 scalar_t__ FIELD_OFFSET (int ,int ) ;
 int lpVtbl ;

LPDIRECT3DDEVICE9_INT IDirect3DDevice9ToImpl(LPDIRECT3DDEVICE9 iface)
{
    if (((void*)0) == iface)
        return ((void*)0);

    return (LPDIRECT3DDEVICE9_INT)((ULONG_PTR)iface - FIELD_OFFSET(DIRECT3DDEVICE9_INT, lpVtbl));
}
