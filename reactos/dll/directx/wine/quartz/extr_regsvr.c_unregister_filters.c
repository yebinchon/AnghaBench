
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regsvr_filter {int clsid; int category; } ;
typedef int LPVOID ;
typedef int IFilterMapper2 ;
typedef int HRESULT ;


 int CLSCTX_INPROC_SERVER ;
 int CLSID_FilterMapper2 ;
 int CoCreateInstance (int *,int *,int ,int *,int *) ;
 int CoInitialize (int *) ;
 int CoUninitialize () ;
 int IFilterMapper2_Release (int *) ;
 int IFilterMapper2_UnregisterFilter (int *,int ,int *,int ) ;
 int IID_IFilterMapper2 ;
 scalar_t__ SUCCEEDED (int ) ;

__attribute__((used)) static HRESULT unregister_filters(struct regsvr_filter const *list)
{
    HRESULT hr;
    IFilterMapper2* pFM2;

    CoInitialize(((void*)0));

    hr = CoCreateInstance(&CLSID_FilterMapper2, ((void*)0), CLSCTX_INPROC_SERVER, &IID_IFilterMapper2, (LPVOID*)&pFM2);

    if (SUCCEEDED(hr)) {
 for (; SUCCEEDED(hr) && list->clsid; ++list)
     hr = IFilterMapper2_UnregisterFilter(pFM2, list->category, ((void*)0), list->clsid);
 IFilterMapper2_Release(pFM2);
    }

    CoUninitialize();

    return hr;
}
