#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct regsvr_filter {int /*<<< orphan*/  clsid; int /*<<< orphan*/  category; } ;
typedef  int /*<<< orphan*/  LPVOID ;
typedef  int /*<<< orphan*/  IFilterMapper2 ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  CLSCTX_INPROC_SERVER ; 
 int /*<<< orphan*/  CLSID_FilterMapper2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IID_IFilterMapper2 ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static HRESULT FUNC6(struct regsvr_filter const *list)
{
    HRESULT hr;
    IFilterMapper2* pFM2;

    FUNC1(NULL);
    
    hr = FUNC0(&CLSID_FilterMapper2, NULL, CLSCTX_INPROC_SERVER, &IID_IFilterMapper2, (LPVOID*)&pFM2);

    if (FUNC5(hr)) {
	for (; FUNC5(hr) && list->clsid; ++list)
	    hr = FUNC4(pFM2, list->category, NULL, list->clsid);
	FUNC3(pFM2);
    }

    FUNC2();
    
    return hr;
}