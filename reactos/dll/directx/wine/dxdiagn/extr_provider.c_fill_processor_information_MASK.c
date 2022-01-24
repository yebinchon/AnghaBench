#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  VARIANT ;
typedef  int /*<<< orphan*/  ULONG ;
typedef  int /*<<< orphan*/  IWbemServices ;
typedef  int /*<<< orphan*/  IWbemLocator ;
typedef  int /*<<< orphan*/  IWbemClassObject ;
typedef  int /*<<< orphan*/  IEnumWbemClassObject ;
typedef  int /*<<< orphan*/  IDxDiagContainerImpl_Container ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  scalar_t__ BSTR ;

/* Variables and functions */
 int /*<<< orphan*/  CLSCTX_INPROC_SERVER ; 
 int /*<<< orphan*/  CLSID_WbemLocator ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IWbemLocator ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (char const*) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 char* FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  WBEM_FLAG_SYSTEM_ONLY ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,char const*,char*) ; 
 int /*<<< orphan*/  FUNC16 (char*,char const*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static HRESULT FUNC17(IDxDiagContainerImpl_Container *node)
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

    hr = FUNC0(&CLSID_WbemLocator, NULL, CLSCTX_INPROC_SERVER, &IID_IWbemLocator, (void**)&wbem_locator);
    if(FUNC1(hr))
        return hr;

    bstr = FUNC10(cimv2W);
    if(!bstr) {
        FUNC7(wbem_locator);
        return E_OUTOFMEMORY;
    }
    hr = FUNC6(wbem_locator, bstr, NULL, NULL, NULL, 0, NULL, NULL, &wbem_service);
    FUNC7(wbem_locator);
    FUNC11(bstr);
    if(FUNC1(hr))
        return hr;

    bstr = FUNC10(proc_classW);
    if(!bstr) {
        FUNC9(wbem_service);
        return E_OUTOFMEMORY;
    }
    hr = FUNC8(wbem_service, bstr, WBEM_FLAG_SYSTEM_ONLY, NULL, &wbem_enum);
    FUNC9(wbem_service);
    FUNC11(bstr);
    if(FUNC1(hr))
        return hr;

    hr = FUNC2(wbem_enum, 1000, 1, &wbem_class, &no);
    FUNC3(wbem_enum);
    if(FUNC1(hr))
        return hr;

    hr = FUNC4(wbem_class, cpu_noW, 0, &cpu_no, NULL, NULL);
    if(FUNC1(hr)) {
        FUNC5(wbem_class);
        return hr;
    }
    hr = FUNC4(wbem_class, max_clock_speedW, 0, &clock_speed, NULL, NULL);
    if(FUNC1(hr)) {
        FUNC5(wbem_class);
        return hr;
    }
    hr = FUNC4(wbem_class, nameW, 0, &cpu_name, NULL, NULL);
    FUNC5(wbem_class);
    if(FUNC1(hr))
        return hr;

    FUNC16(print_buf, processor_fmtW,
             FUNC12(&cpu_name), FUNC13(&cpu_no), FUNC13(&clock_speed));
    FUNC14(&cpu_name);
    FUNC14(&cpu_no);
    FUNC14(&clock_speed);

    return FUNC15(node, szProcessorEnglish, print_buf);
}