#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  char WCHAR ;
struct TYPE_8__ {int /*<<< orphan*/  strings_stream; int /*<<< orphan*/  pStorage; int /*<<< orphan*/  pITStorage; int /*<<< orphan*/  szFile; int /*<<< orphan*/  codePage; } ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  TYPE_1__ CHMInfo ;

/* Variables and functions */
 int /*<<< orphan*/  CLSCTX_INPROC_SERVER ; 
 int /*<<< orphan*/  CLSID_ITStorage ; 
 int /*<<< orphan*/  CP_ACP ; 
 TYPE_1__* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IID_IITStorage ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int STGM_READ ; 
 int STGM_SHARE_DENY_WRITE ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 TYPE_1__* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

CHMInfo *FUNC10(LPCWSTR szFile)
{
    HRESULT hres;
    CHMInfo *ret;

    static const WCHAR wszSTRINGS[] = {'#','S','T','R','I','N','G','S',0};

    if (!(ret = FUNC7(sizeof(CHMInfo))))
        return NULL;
    ret->codePage = CP_ACP;

    if (!(ret->szFile = FUNC9(szFile))) {
        FUNC8(ret);
        return NULL;
    }

    hres = FUNC1(&CLSID_ITStorage, NULL, CLSCTX_INPROC_SERVER,
            &IID_IITStorage, (void **) &ret->pITStorage) ;
    if(FUNC2(hres)) {
        FUNC6("Could not create ITStorage: %08x\n", hres);
        return FUNC0(ret);
    }

    hres = FUNC3(ret->pITStorage, szFile, NULL,
            STGM_READ | STGM_SHARE_DENY_WRITE, NULL, 0, &ret->pStorage);
    if(FUNC2(hres)) {
        FUNC6("Could not open storage: %08x\n", hres);
        return FUNC0(ret);
    }
    hres = FUNC4(ret->pStorage, wszSTRINGS, NULL, STGM_READ, 0,
            &ret->strings_stream);
    if(FUNC2(hres)) {
        FUNC6("Could not open #STRINGS stream: %08x\n", hres);
        /* It's not critical, so we pass */
    }

    if(!FUNC5(ret)) {
        FUNC6("Could not read #SYSTEM\n");
        return FUNC0(ret);
    }

    return ret;
}