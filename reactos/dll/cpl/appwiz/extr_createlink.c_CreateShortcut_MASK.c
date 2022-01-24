#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_16__ {TYPE_1__* lpVtbl; } ;
struct TYPE_15__ {int /*<<< orphan*/  szLinkName; int /*<<< orphan*/  szWorkingDirectory; int /*<<< orphan*/  szDescription; scalar_t__ szTarget; } ;
struct TYPE_14__ {scalar_t__ (* Load ) (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;scalar_t__ (* Save ) (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* SetWorkingDirectory ) (TYPE_3__*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* SetDescription ) (TYPE_3__*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* SetPath ) (TYPE_3__*,int /*<<< orphan*/ *) ;} ;
typedef  TYPE_2__* PCREATE_LINK_CONTEXT ;
typedef  int /*<<< orphan*/  LPWSTR ;
typedef  int /*<<< orphan*/  LPCOLESTR ;
typedef  TYPE_3__ IShellLinkW ;
typedef  TYPE_3__ IPersistFile ;
typedef  scalar_t__ HRESULT ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CLSCTX_ALL ; 
 int /*<<< orphan*/  CLSID_ShellLink ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int FALSE ; 
 int /*<<< orphan*/  IID_IPersistFile ; 
 int /*<<< orphan*/  IID_IShellLinkW ; 
 scalar_t__ FUNC2 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_3__*,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  STGM_READ ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

BOOL
FUNC14(PCREATE_LINK_CONTEXT pContext)
{
    IShellLinkW *pShellLink, *pSourceShellLink;
    IPersistFile *pPersistFile;
    HRESULT hr;
    WCHAR Path[MAX_PATH];
    LPWSTR lpExtension;

    /* get the extension */
    lpExtension = FUNC6(pContext->szTarget);

    if (FUNC5(lpExtension))
    {
        hr = FUNC0(&CLSID_ShellLink, NULL, CLSCTX_ALL, &IID_IShellLinkW, (void**)&pSourceShellLink);

        if (FUNC1(hr))
            return FALSE;

        hr = FUNC3(pSourceShellLink, &IID_IPersistFile, (void**)&pPersistFile);
        if (FUNC1(hr))
        {
            FUNC4(pSourceShellLink);
            return FALSE;
        }

        hr = pPersistFile->lpVtbl->Load(pPersistFile, (LPCOLESTR)pContext->szTarget, STGM_READ);
        FUNC4(pPersistFile);

        if (FUNC1(hr))
        {
            FUNC4(pSourceShellLink);
            return FALSE;
        }

        hr = FUNC2(pSourceShellLink, Path, FUNC8(Path), NULL, 0);
        FUNC4(pSourceShellLink);

        if (FUNC1(hr))
        {
            return FALSE;
        }
    }
    else
    {
        FUNC7(Path, FUNC8(Path), pContext->szTarget);
    }

    hr = FUNC0(&CLSID_ShellLink, NULL, CLSCTX_ALL,
                          &IID_IShellLinkW, (void**)&pShellLink);

    if (hr != S_OK)
        return FALSE;

    pShellLink->lpVtbl->SetPath(pShellLink, Path);
    pShellLink->lpVtbl->SetDescription(pShellLink, pContext->szDescription);
    pShellLink->lpVtbl->SetWorkingDirectory(pShellLink, pContext->szWorkingDirectory);

    hr = FUNC3(pShellLink, &IID_IPersistFile, (void**)&pPersistFile);
    if (hr != S_OK)
    {
        FUNC4(pShellLink);
        return FALSE;
    }

    hr = pPersistFile->lpVtbl->Save(pPersistFile, pContext->szLinkName, TRUE);
    FUNC4(pPersistFile);
    FUNC4(pShellLink);
    return (hr == S_OK);
}