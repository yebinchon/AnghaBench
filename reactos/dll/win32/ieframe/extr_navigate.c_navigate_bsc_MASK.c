#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  void* VARIANT_BOOL ;
struct TYPE_18__ {int /*<<< orphan*/  IBindStatusCallback_iface; int /*<<< orphan*/  url; int /*<<< orphan*/  headers; int /*<<< orphan*/  post_data_len; scalar_t__ post_data; } ;
struct TYPE_17__ {scalar_t__ frame; scalar_t__ document; void* busy; } ;
struct TYPE_16__ {int /*<<< orphan*/  pvData; } ;
typedef  TYPE_1__ SAFEARRAY ;
typedef  int /*<<< orphan*/  IMoniker ;
typedef  int /*<<< orphan*/  IBindCtx ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  TYPE_2__ DocHost ;
typedef  TYPE_3__ BindStatusCallback ;

/* Variables and functions */
 int /*<<< orphan*/  CSC_NAVIGATEBACK ; 
 int /*<<< orphan*/  CSC_NAVIGATEFORWARD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  READYSTATE_LOADING ; 
 int /*<<< orphan*/  S_OK ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  TRUE ; 
 void* VARIANT_FALSE ; 
 int /*<<< orphan*/  VT_UI1 ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static HRESULT FUNC13(DocHost *This, BindStatusCallback *bsc, IMoniker *mon)
{
    VARIANT_BOOL cancel = VARIANT_FALSE;
    SAFEARRAY *post_data = NULL;
    IBindCtx *bindctx;
    HRESULT hres;

    FUNC12(This, READYSTATE_LOADING);

    if(bsc->post_data) {
        post_data = FUNC4(VT_UI1, 0, bsc->post_data_len);
        FUNC8(post_data->pvData, post_data, bsc->post_data_len);
    }

    FUNC10(This, bsc->url, post_data, bsc->headers, &cancel);
    if(post_data)
        FUNC5(post_data);
    if(cancel) {
        FUNC1("Navigation canceled\n");
        return S_OK;
    }

    FUNC9(This, TRUE);
    This->busy = VARIANT_FALSE;

    FUNC11(This, CSC_NAVIGATEBACK, FALSE);
    FUNC11(This, CSC_NAVIGATEFORWARD, FALSE);

    if(This->document)
        FUNC7(This);

    FUNC0(0, &bsc->IBindStatusCallback_iface, 0, &bindctx);

    if(This->frame)
        FUNC3(This->frame, FALSE);

    hres = FUNC6(This, mon, bsc->url, bindctx, &bsc->IBindStatusCallback_iface);

    if(This->frame)
        FUNC3(This->frame, TRUE);

    FUNC2(bindctx);

    return hres;
}