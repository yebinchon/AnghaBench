
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_6__ {int * lpVtbl; } ;
struct TYPE_7__ {int ref; TYPE_1__ IEnumMoniker_iface; int dmo_enum; int * cm_key; int * sw_key; int class; scalar_t__ cm_index; scalar_t__ sw_index; } ;
typedef int * REFCLSID ;
typedef TYPE_1__ IEnumMoniker ;
typedef int HRESULT ;
typedef TYPE_2__ EnumMonikerImpl ;


 int CHARS_IN_GUID ;
 TYPE_2__* CoTaskMemAlloc (int) ;
 int DEVENUM_LockModule () ;
 int DMOEnum (int *,int ,int ,int *,int ,int *,int *) ;
 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 int HKEY_CLASSES_ROOT ;
 int HKEY_CURRENT_USER ;
 int IEnumMoniker_Release (TYPE_1__*) ;
 int IEnumMoniker_Vtbl ;
 int KEY_ENUMERATE_SUB_KEYS ;
 scalar_t__ RegOpenKeyExW (int ,int *,int ,int ,int **) ;
 int S_OK ;
 int StringFromGUID2 (int *,int *,int ) ;
 int backslashW ;
 int clsidW ;
 int instanceW ;
 int lstrcatW (int *,int ) ;
 int lstrcpyW (int *,int ) ;
 int lstrlenW (int *) ;
 int wszActiveMovieKey ;

HRESULT create_EnumMoniker(REFCLSID class, IEnumMoniker **ppEnumMoniker)
{
    EnumMonikerImpl * pEnumMoniker = CoTaskMemAlloc(sizeof(EnumMonikerImpl));
    WCHAR buffer[78];
    HRESULT hr;

    if (!pEnumMoniker)
        return E_OUTOFMEMORY;

    pEnumMoniker->IEnumMoniker_iface.lpVtbl = &IEnumMoniker_Vtbl;
    pEnumMoniker->ref = 1;
    pEnumMoniker->sw_index = 0;
    pEnumMoniker->cm_index = 0;
    pEnumMoniker->class = *class;

    lstrcpyW(buffer, clsidW);
    lstrcatW(buffer, backslashW);
    StringFromGUID2(class, buffer + lstrlenW(buffer), CHARS_IN_GUID);
    lstrcatW(buffer, instanceW);
    if (RegOpenKeyExW(HKEY_CLASSES_ROOT, buffer, 0, KEY_ENUMERATE_SUB_KEYS, &pEnumMoniker->sw_key))
        pEnumMoniker->sw_key = ((void*)0);

    lstrcpyW(buffer, wszActiveMovieKey);
    StringFromGUID2(class, buffer + lstrlenW(buffer), CHARS_IN_GUID);
    if (RegOpenKeyExW(HKEY_CURRENT_USER, buffer, 0, KEY_ENUMERATE_SUB_KEYS, &pEnumMoniker->cm_key))
        pEnumMoniker->cm_key = ((void*)0);

    hr = DMOEnum(class, 0, 0, ((void*)0), 0, ((void*)0), &pEnumMoniker->dmo_enum);
    if (FAILED(hr))
    {
        IEnumMoniker_Release(&pEnumMoniker->IEnumMoniker_iface);
        return hr;
    }

    *ppEnumMoniker = &pEnumMoniker->IEnumMoniker_iface;

    DEVENUM_LockModule();

    return S_OK;
}
