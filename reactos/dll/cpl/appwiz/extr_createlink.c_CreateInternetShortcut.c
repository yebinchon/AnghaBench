
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_12__ {TYPE_1__* lpVtbl; } ;
struct TYPE_11__ {int szTarget; int szLinkName; } ;
struct TYPE_10__ {int (* Save ) (TYPE_3__*,int *,int ) ;int (* SetURL ) (TYPE_3__*,int ,int ) ;} ;
typedef TYPE_2__* PCREATE_LINK_CONTEXT ;
typedef TYPE_3__ IUniformResourceLocatorW ;
typedef TYPE_3__ IPersistFile ;
typedef int HRESULT ;
typedef int BOOL ;


 int CLSCTX_ALL ;
 int CLSID_InternetShortcut ;
 int CoCreateInstance (int *,int *,int ,int *,void**) ;
 scalar_t__ FAILED (int ) ;
 int FALSE ;
 int GetFullPathNameW (int ,int ,int *,int *) ;
 int IID_IPersistFile ;
 int IID_IUniformResourceLocatorW ;
 int IUnknown_QueryInterface (TYPE_3__*,int *,void**) ;
 int IUnknown_Release (TYPE_3__*) ;
 int MAX_PATH ;
 int SUCCEEDED (int ) ;
 int TRUE ;
 int _countof (int *) ;
 int stub1 (TYPE_3__*,int ,int ) ;
 int stub2 (TYPE_3__*,int *,int ) ;

BOOL
CreateInternetShortcut(PCREATE_LINK_CONTEXT pContext)
{
    IUniformResourceLocatorW *pURL = ((void*)0);
    IPersistFile *pPersistFile = ((void*)0);
    HRESULT hr;
    WCHAR szPath[MAX_PATH];
    GetFullPathNameW(pContext->szLinkName, _countof(szPath), szPath, ((void*)0));

    hr = CoCreateInstance(&CLSID_InternetShortcut, ((void*)0), CLSCTX_ALL,
                          &IID_IUniformResourceLocatorW, (void **)&pURL);
    if (FAILED(hr))
        return FALSE;

    hr = IUnknown_QueryInterface(pURL, &IID_IPersistFile, (void **)&pPersistFile);
    if (FAILED(hr))
    {
        IUnknown_Release(pURL);
        return FALSE;
    }

    pURL->lpVtbl->SetURL(pURL, pContext->szTarget, 0);

    hr = pPersistFile->lpVtbl->Save(pPersistFile, szPath, TRUE);

    IUnknown_Release(pPersistFile);
    IUnknown_Release(pURL);

    return SUCCEEDED(hr);
}
