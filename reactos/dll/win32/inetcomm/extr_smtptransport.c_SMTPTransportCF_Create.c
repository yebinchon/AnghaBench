
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int REFIID ;
typedef int LPVOID ;
typedef int IClassFactory ;
typedef int HRESULT ;


 int IClassFactory_QueryInterface (int *,int ,int *) ;
 int SMTPTransportCF ;

HRESULT SMTPTransportCF_Create(REFIID riid, LPVOID *ppv)
{
    return IClassFactory_QueryInterface((IClassFactory *)&SMTPTransportCF, riid, ppv);
}
