
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ url; } ;
typedef int HRESULT ;
typedef TYPE_1__ DocHost ;
typedef int BSTR ;


 int E_OUTOFMEMORY ;
 int FIXME (char*) ;
 int S_FALSE ;
 int S_OK ;
 int SysAllocString (scalar_t__) ;
 int SysAllocStringLen (int *,int ) ;

HRESULT get_location_url(DocHost *This, BSTR *ret)
{
    FIXME("semi-stub\n");

    *ret = This->url ? SysAllocString(This->url) : SysAllocStringLen(((void*)0), 0);
    if(!*ret)
        return E_OUTOFMEMORY;

    return This->url ? S_OK : S_FALSE;
}
