
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int VARIANT ;
typedef int ULONG ;
typedef int IWbemServices ;
typedef int IWbemLocator ;
typedef int IWbemClassObject ;
typedef int IEnumWbemClassObject ;
typedef int IDxDiagContainerImpl_Container ;
typedef int HRESULT ;
typedef scalar_t__ BSTR ;


 int CLSCTX_INPROC_SERVER ;
 int CLSID_WbemLocator ;
 int CoCreateInstance (int *,int *,int ,int *,void**) ;
 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 int IEnumWbemClassObject_Next (int *,int,int,int **,int *) ;
 int IEnumWbemClassObject_Release (int *) ;
 int IID_IWbemLocator ;
 int IWbemClassObject_Get (int *,char const*,int ,int *,int *,int *) ;
 int IWbemClassObject_Release (int *) ;
 int IWbemLocator_ConnectServer (int *,scalar_t__,int *,int *,int *,int ,int *,int *,int **) ;
 int IWbemLocator_Release (int *) ;
 int IWbemServices_CreateInstanceEnum (int *,scalar_t__,int ,int *,int **) ;
 int IWbemServices_Release (int *) ;
 scalar_t__ SysAllocString (char const*) ;
 int SysFreeString (scalar_t__) ;
 char* V_BSTR (int *) ;
 int V_I4 (int *) ;
 int VariantClear (int *) ;
 int WBEM_FLAG_SYSTEM_ONLY ;
 int add_bstr_property (int *,char const*,char*) ;
 int swprintf (char*,char const*,char*,int ,int ) ;

__attribute__((used)) static HRESULT fill_processor_information(IDxDiagContainerImpl_Container *node)
{
    static const WCHAR szProcessorEnglish[] = {'s','z','P','r','o','c','e','s','s','o','r','E','n','g','l','i','s','h',0};

    static const WCHAR cimv2W[] = {'\\','\\','.','\\','r','o','o','t','\\','c','i','m','v','2',0};
    static const WCHAR proc_classW[] = {'W','i','n','3','2','_','P','r','o','c','e','s','s','o','r',0};
    static const WCHAR nameW[] = {'N','a','m','e',0};
    static const WCHAR max_clock_speedW[] = {'M','a','x','C','l','o','c','k','S','p','e','e','d',0};
    static const WCHAR cpu_noW[] = {'N','u','m','b','e','r','O','f','L','o','g','i','c','a','l','P','r','o','c','e','s','s','o','r','s',0};

    static const WCHAR processor_fmtW[] = {'%','s','(','%','d',' ','C','P','U','s',')',',',' ','~','%','d','M','H','z',0};

    IWbemLocator *wbem_locator;
    IWbemServices *wbem_service;
    IWbemClassObject *wbem_class;
    IEnumWbemClassObject *wbem_enum;
    VARIANT cpu_name, cpu_no, clock_speed;
    WCHAR print_buf[200];
    BSTR bstr;
    ULONG no;
    HRESULT hr;

    hr = CoCreateInstance(&CLSID_WbemLocator, ((void*)0), CLSCTX_INPROC_SERVER, &IID_IWbemLocator, (void**)&wbem_locator);
    if(FAILED(hr))
        return hr;

    bstr = SysAllocString(cimv2W);
    if(!bstr) {
        IWbemLocator_Release(wbem_locator);
        return E_OUTOFMEMORY;
    }
    hr = IWbemLocator_ConnectServer(wbem_locator, bstr, ((void*)0), ((void*)0), ((void*)0), 0, ((void*)0), ((void*)0), &wbem_service);
    IWbemLocator_Release(wbem_locator);
    SysFreeString(bstr);
    if(FAILED(hr))
        return hr;

    bstr = SysAllocString(proc_classW);
    if(!bstr) {
        IWbemServices_Release(wbem_service);
        return E_OUTOFMEMORY;
    }
    hr = IWbemServices_CreateInstanceEnum(wbem_service, bstr, WBEM_FLAG_SYSTEM_ONLY, ((void*)0), &wbem_enum);
    IWbemServices_Release(wbem_service);
    SysFreeString(bstr);
    if(FAILED(hr))
        return hr;

    hr = IEnumWbemClassObject_Next(wbem_enum, 1000, 1, &wbem_class, &no);
    IEnumWbemClassObject_Release(wbem_enum);
    if(FAILED(hr))
        return hr;

    hr = IWbemClassObject_Get(wbem_class, cpu_noW, 0, &cpu_no, ((void*)0), ((void*)0));
    if(FAILED(hr)) {
        IWbemClassObject_Release(wbem_class);
        return hr;
    }
    hr = IWbemClassObject_Get(wbem_class, max_clock_speedW, 0, &clock_speed, ((void*)0), ((void*)0));
    if(FAILED(hr)) {
        IWbemClassObject_Release(wbem_class);
        return hr;
    }
    hr = IWbemClassObject_Get(wbem_class, nameW, 0, &cpu_name, ((void*)0), ((void*)0));
    IWbemClassObject_Release(wbem_class);
    if(FAILED(hr))
        return hr;

    swprintf(print_buf, processor_fmtW,
             V_BSTR(&cpu_name), V_I4(&cpu_no), V_I4(&clock_speed));
    VariantClear(&cpu_name);
    VariantClear(&cpu_no);
    VariantClear(&clock_speed);

    return add_bstr_property(node, szProcessorEnglish, print_buf);
}
