
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPSTR ;
typedef int LPDIRECT3DDEVICE9_INT ;
typedef int HRESULT ;


 int D3DERR_INVALIDCALL ;
 int DPRINT1 (char*,int ) ;
 int UNLOCK_D3DDEVICE9 () ;

__attribute__((used)) static HRESULT InvalidCall(LPDIRECT3DDEVICE9_INT This, LPSTR ErrorMsg)
{
    DPRINT1("%s",ErrorMsg);
    UNLOCK_D3DDEVICE9();
    return D3DERR_INVALIDCALL;
}
