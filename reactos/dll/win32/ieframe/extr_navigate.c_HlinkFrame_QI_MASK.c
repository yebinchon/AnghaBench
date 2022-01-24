#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  IWebBrowserPriv2IE9_iface; int /*<<< orphan*/  ITargetFramePriv2_iface; int /*<<< orphan*/  ITargetFrame2_iface; int /*<<< orphan*/  ITargetFrame_iface; int /*<<< orphan*/  IHlinkFrame_iface; } ;
typedef  int /*<<< orphan*/  REFIID ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  TYPE_1__ HlinkFrame ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  IID_IHlinkFrame ; 
 int /*<<< orphan*/  IID_ITargetFrame ; 
 int /*<<< orphan*/  IID_ITargetFrame2 ; 
 int /*<<< orphan*/  IID_ITargetFramePriv ; 
 int /*<<< orphan*/  IID_ITargetFramePriv2 ; 
 int /*<<< orphan*/  IID_IWebBrowserPriv2IE9 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,TYPE_1__*,void**) ; 
 int /*<<< orphan*/  TRUE ; 

BOOL FUNC3(HlinkFrame *This, REFIID riid, void **ppv)
{
    if(FUNC1(&IID_IHlinkFrame, riid)) {
        FUNC2("(%p)->(IID_IHlinkFrame %p)\n", This, ppv);
        *ppv = &This->IHlinkFrame_iface;
    }else if(FUNC1(&IID_ITargetFrame, riid)) {
        FUNC2("(%p)->(IID_ITargetFrame %p)\n", This, ppv);
        *ppv = &This->ITargetFrame_iface;
    }else if(FUNC1(&IID_ITargetFrame2, riid)) {
        FUNC2("(%p)->(IID_ITargetFrame2 %p)\n", This, ppv);
        *ppv = &This->ITargetFrame2_iface;
    }else if(FUNC1(&IID_ITargetFramePriv, riid)) {
        FUNC2("(%p)->(IID_ITargetFramePriv %p)\n", This, ppv);
        *ppv = &This->ITargetFramePriv2_iface;
    }else if(FUNC1(&IID_ITargetFramePriv2, riid)) {
        FUNC2("(%p)->(IID_ITargetFramePriv2 %p)\n", This, ppv);
        *ppv = &This->ITargetFramePriv2_iface;
    }else if(FUNC1(&IID_IWebBrowserPriv2IE9, riid)) {
        FUNC2("(%p)->(IID_IWebBrowserPriv2IE9 %p)\n", This, ppv);
        *ppv = &This->IWebBrowserPriv2IE9_iface;
    }else {
        return FALSE;
    }

    FUNC0((IUnknown*)*ppv);
    return TRUE;
}