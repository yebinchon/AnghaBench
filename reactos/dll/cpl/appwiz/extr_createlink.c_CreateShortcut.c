
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_16__ {TYPE_1__* lpVtbl; } ;
struct TYPE_15__ {int szLinkName; int szWorkingDirectory; int szDescription; scalar_t__ szTarget; } ;
struct TYPE_14__ {scalar_t__ (* Load ) (TYPE_3__*,int ,int ) ;scalar_t__ (* Save ) (TYPE_3__*,int ,int ) ;int (* SetWorkingDirectory ) (TYPE_3__*,int ) ;int (* SetDescription ) (TYPE_3__*,int ) ;int (* SetPath ) (TYPE_3__*,int *) ;} ;
typedef TYPE_2__* PCREATE_LINK_CONTEXT ;
typedef int LPWSTR ;
typedef int LPCOLESTR ;
typedef TYPE_3__ IShellLinkW ;
typedef TYPE_3__ IPersistFile ;
typedef scalar_t__ HRESULT ;
typedef int BOOL ;


 int CLSCTX_ALL ;
 int CLSID_ShellLink ;
 scalar_t__ CoCreateInstance (int *,int *,int ,int *,void**) ;
 scalar_t__ FAILED (scalar_t__) ;
 int FALSE ;
 int IID_IPersistFile ;
 int IID_IShellLinkW ;
 scalar_t__ IShellLinkW_GetPath (TYPE_3__*,int *,int ,int *,int ) ;
 scalar_t__ IUnknown_QueryInterface (TYPE_3__*,int *,void**) ;
 int IUnknown_Release (TYPE_3__*) ;
 scalar_t__ IsExtensionAShortcut (int ) ;
 int MAX_PATH ;
 int PathFindExtensionW (scalar_t__) ;
 int STGM_READ ;
 scalar_t__ S_OK ;
 int StringCchCopyW (int *,int ,scalar_t__) ;
 int TRUE ;
 int _countof (int *) ;
 scalar_t__ stub1 (TYPE_3__*,int ,int ) ;
 int stub2 (TYPE_3__*,int *) ;
 int stub3 (TYPE_3__*,int ) ;
 int stub4 (TYPE_3__*,int ) ;
 scalar_t__ stub5 (TYPE_3__*,int ,int ) ;

BOOL
CreateShortcut(PCREATE_LINK_CONTEXT pContext)
{
    IShellLinkW *pShellLink, *pSourceShellLink;
    IPersistFile *pPersistFile;
    HRESULT hr;
    WCHAR Path[MAX_PATH];
    LPWSTR lpExtension;


    lpExtension = PathFindExtensionW(pContext->szTarget);

    if (IsExtensionAShortcut(lpExtension))
    {
        hr = CoCreateInstance(&CLSID_ShellLink, ((void*)0), CLSCTX_ALL, &IID_IShellLinkW, (void**)&pSourceShellLink);

        if (FAILED(hr))
            return FALSE;

        hr = IUnknown_QueryInterface(pSourceShellLink, &IID_IPersistFile, (void**)&pPersistFile);
        if (FAILED(hr))
        {
            IUnknown_Release(pSourceShellLink);
            return FALSE;
        }

        hr = pPersistFile->lpVtbl->Load(pPersistFile, (LPCOLESTR)pContext->szTarget, STGM_READ);
        IUnknown_Release(pPersistFile);

        if (FAILED(hr))
        {
            IUnknown_Release(pSourceShellLink);
            return FALSE;
        }

        hr = IShellLinkW_GetPath(pSourceShellLink, Path, _countof(Path), ((void*)0), 0);
        IUnknown_Release(pSourceShellLink);

        if (FAILED(hr))
        {
            return FALSE;
        }
    }
    else
    {
        StringCchCopyW(Path, _countof(Path), pContext->szTarget);
    }

    hr = CoCreateInstance(&CLSID_ShellLink, ((void*)0), CLSCTX_ALL,
                          &IID_IShellLinkW, (void**)&pShellLink);

    if (hr != S_OK)
        return FALSE;

    pShellLink->lpVtbl->SetPath(pShellLink, Path);
    pShellLink->lpVtbl->SetDescription(pShellLink, pContext->szDescription);
    pShellLink->lpVtbl->SetWorkingDirectory(pShellLink, pContext->szWorkingDirectory);

    hr = IUnknown_QueryInterface(pShellLink, &IID_IPersistFile, (void**)&pPersistFile);
    if (hr != S_OK)
    {
        IUnknown_Release(pShellLink);
        return FALSE;
    }

    hr = pPersistFile->lpVtbl->Save(pPersistFile, pContext->szLinkName, TRUE);
    IUnknown_Release(pPersistFile);
    IUnknown_Release(pShellLink);
    return (hr == S_OK);
}
