
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ULONG_PTR ;
typedef int * LPDIRECT3D9_INT ;
typedef int * LPDIRECT3D9 ;


 int DIRECT3D9_INT ;
 scalar_t__ FIELD_OFFSET (int ,int ) ;
 int lpVtbl ;

__attribute__((used)) static LPDIRECT3D9_INT IDirect3D9ToImpl(LPDIRECT3D9 iface)
{
    if (((void*)0) == iface)
        return ((void*)0);

    return (LPDIRECT3D9_INT)((ULONG_PTR)iface - FIELD_OFFSET(DIRECT3D9_INT, lpVtbl));
}
