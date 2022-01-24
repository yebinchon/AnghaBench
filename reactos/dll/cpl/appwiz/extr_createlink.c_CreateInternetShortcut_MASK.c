#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_12__ {TYPE_1__* lpVtbl; } ;
struct TYPE_11__ {int /*<<< orphan*/  szTarget; int /*<<< orphan*/  szLinkName; } ;
struct TYPE_10__ {int /*<<< orphan*/  (* Save ) (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* SetURL ) (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_2__* PCREATE_LINK_CONTEXT ;
typedef  TYPE_3__ IUniformResourceLocatorW ;
typedef  TYPE_3__ IPersistFile ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CLSCTX_ALL ; 
 int /*<<< orphan*/  CLSID_InternetShortcut ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IPersistFile ; 
 int /*<<< orphan*/  IID_IUniformResourceLocatorW ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

BOOL
FUNC9(PCREATE_LINK_CONTEXT pContext)
{
    IUniformResourceLocatorW *pURL = NULL;
    IPersistFile *pPersistFile = NULL;
    HRESULT hr;
    WCHAR szPath[MAX_PATH];
    FUNC2(pContext->szLinkName, FUNC6(szPath), szPath, NULL);

    hr = FUNC0(&CLSID_InternetShortcut, NULL, CLSCTX_ALL,
                          &IID_IUniformResourceLocatorW, (void **)&pURL);
    if (FUNC1(hr))
        return FALSE;

    hr = FUNC3(pURL, &IID_IPersistFile, (void **)&pPersistFile);
    if (FUNC1(hr))
    {
        FUNC4(pURL);
        return FALSE;
    }

    pURL->lpVtbl->SetURL(pURL, pContext->szTarget, 0);

    hr = pPersistFile->lpVtbl->Save(pPersistFile, szPath, TRUE);

    FUNC4(pPersistFile);
    FUNC4(pURL);

    return FUNC5(hr);
}