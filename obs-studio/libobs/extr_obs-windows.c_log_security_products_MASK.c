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
typedef  int /*<<< orphan*/  IWSCProductList ;
typedef  int /*<<< orphan*/  IID ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  HMODULE ;
typedef  int /*<<< orphan*/  CLSID ;

/* Variables and functions */
 int /*<<< orphan*/  CLSCTX_INPROC_SERVER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  LOG_INFO ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  WSC_SECURITY_PROVIDER_ANTISPYWARE ; 
 int /*<<< orphan*/  WSC_SECURITY_PROVIDER_ANTIVIRUS ; 
 int /*<<< orphan*/  WSC_SECURITY_PROVIDER_FIREWALL ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(void)
{
	IWSCProductList *prod_list = NULL;
	HMODULE h_wsc;
	HRESULT hr;

	/* We load the DLL rather than import wcsapi.lib because the clsid /
	 * iid only exists on Windows 8 or higher. */

	h_wsc = FUNC4(L"wscapi.dll");
	if (!h_wsc)
		return;

	const CLSID *prod_list_clsid =
		(const CLSID *)FUNC3(h_wsc, "CLSID_WSCProductList");
	const IID *prod_list_iid =
		(const IID *)FUNC3(h_wsc, "IID_IWSCProductList");

	if (prod_list_clsid && prod_list_iid) {
		FUNC5(LOG_INFO, "Sec. Software Status:");

		hr = FUNC0(prod_list_clsid, NULL,
				      CLSCTX_INPROC_SERVER, prod_list_iid,
				      &prod_list);
		if (!FUNC1(hr)) {
			FUNC6(
				prod_list, WSC_SECURITY_PROVIDER_ANTIVIRUS);
		}

		hr = FUNC0(prod_list_clsid, NULL,
				      CLSCTX_INPROC_SERVER, prod_list_iid,
				      &prod_list);
		if (!FUNC1(hr)) {
			FUNC6(
				prod_list, WSC_SECURITY_PROVIDER_FIREWALL);
		}

		hr = FUNC0(prod_list_clsid, NULL,
				      CLSCTX_INPROC_SERVER, prod_list_iid,
				      &prod_list);
		if (!FUNC1(hr)) {
			FUNC6(
				prod_list, WSC_SECURITY_PROVIDER_ANTISPYWARE);
		}
	}

	FUNC2(h_wsc);
}