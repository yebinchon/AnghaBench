
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPINETSERVER ;
typedef int InternetTransport ;
typedef int IImnAccount ;
typedef int HRESULT ;


 int E_NOTIMPL ;
 int FIXME (char*,int *,int ) ;

HRESULT InternetTransport_InetServerFromAccount(InternetTransport *This,
    IImnAccount *pAccount, LPINETSERVER pInetServer)
{
    FIXME("(%p, %p): stub\n", pAccount, pInetServer);
    return E_NOTIMPL;
}
