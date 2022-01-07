
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HCRYPTMSG ;
typedef int DWORD ;
typedef int BOOL ;


 int E_INVALIDARG ;
 int FALSE ;
 int SetLastError (int ) ;
 int TRACE (char*,int ,int ,int ,void const*) ;

__attribute__((used)) static BOOL CRYPT_DefaultMsgControl(HCRYPTMSG hCryptMsg, DWORD dwFlags,
 DWORD dwCtrlType, const void *pvCtrlPara)
{
    TRACE("(%p, %08x, %d, %p)\n", hCryptMsg, dwFlags, dwCtrlType, pvCtrlPara);
    SetLastError(E_INVALIDARG);
    return FALSE;
}
