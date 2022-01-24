#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  bindinfo ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  scalar_t__ ULONG ;
struct TYPE_16__ {int /*<<< orphan*/ * hGlobal; } ;
struct TYPE_17__ {TYPE_1__ u; } ;
struct TYPE_20__ {int cbSize; scalar_t__ dwBindVerb; TYPE_2__ stgmedData; scalar_t__ cbstgmedData; } ;
struct TYPE_19__ {int /*<<< orphan*/  IBindStatusCallback_iface; } ;
struct TYPE_18__ {scalar_t__ doc_navigate; } ;
typedef  int /*<<< orphan*/ * PBYTE ;
typedef  int /*<<< orphan*/ * LPWSTR ;
typedef  int /*<<< orphan*/  IMoniker ;
typedef  int /*<<< orphan*/  IHttpNegotiate ;
typedef  int /*<<< orphan*/  IBindStatusCallback ;
typedef  int /*<<< orphan*/  IBindCtx ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  TYPE_3__ DocHost ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  TYPE_4__ BindStatusCallback ;
typedef  TYPE_5__ BINDINFO ;

/* Variables and functions */
 scalar_t__ BINDVERB_POST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IHttpNegotiate ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC13 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_5__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_3__*,TYPE_4__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC17(DocHost *This, IMoniker *mon, IBindCtx *bindctx,
                              IBindStatusCallback *callback)
{
    IHttpNegotiate *http_negotiate;
    BindStatusCallback *bsc;
    PBYTE post_data = NULL;
    ULONG post_data_len = 0;
    LPWSTR headers = NULL, url;
    BINDINFO bindinfo;
    DWORD bindf = 0;
    HRESULT hres;

    FUNC11("\n");

    hres = FUNC8(mon, 0, NULL, &url);
    if(FUNC1(hres))
        FUNC2("GetDisplayName failed: %08x\n", hres);

    hres = FUNC4(callback, &IID_IHttpNegotiate,
                                              (void**)&http_negotiate);
    if(FUNC10(hres)) {
        static const WCHAR null_string[] = {0};

        FUNC6(http_negotiate, null_string, null_string, 0,
                                            &headers);
        FUNC7(http_negotiate);
    }

    FUNC15(&bindinfo, 0, sizeof(bindinfo));
    bindinfo.cbSize = sizeof(bindinfo);

    hres = FUNC3(callback, &bindf, &bindinfo);
    FUNC14(&bindinfo);
    if(bindinfo.dwBindVerb == BINDVERB_POST) {
        post_data_len = bindinfo.cbstgmedData;
        if(post_data_len)
            post_data = bindinfo.stgmedData.u.hGlobal;
    }

    if(This->doc_navigate) {
        hres = FUNC12(This, url, headers, post_data, post_data_len, FALSE);
    }else {
        bsc = FUNC13(This, url, post_data, post_data_len, headers);
        hres = FUNC16(This, bsc, mon);
        FUNC5(&bsc->IBindStatusCallback_iface);
    }

    FUNC0(url);
    FUNC0(headers);
    FUNC9(&bindinfo);

    return hres;
}