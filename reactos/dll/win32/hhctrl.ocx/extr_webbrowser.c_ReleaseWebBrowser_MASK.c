#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  IOleClientSite_iface; scalar_t__ ole_obj; } ;
typedef  TYPE_1__ WebBrowserContainer ;
struct TYPE_5__ {TYPE_1__* web_browser; } ;
typedef  int /*<<< orphan*/  IOleInPlaceSite ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  TYPE_2__ HHInfo ;

/* Variables and functions */
 int /*<<< orphan*/  IID_IOleInPlaceSite ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(HHInfo *info)
{
    WebBrowserContainer *container = info->web_browser;
    HRESULT hres;

    if(!container)
        return;

    if(container->ole_obj) {
        IOleInPlaceSite *inplace;

        hres = FUNC3(container->ole_obj, &IID_IOleInPlaceSite, (void**)&inplace);
        if(FUNC5(hres)) {
            FUNC1(inplace);
            FUNC2(inplace);
        }

        FUNC4(container->ole_obj, NULL);
    }

    info->web_browser = NULL;
    FUNC0(&container->IOleClientSite_iface);
}