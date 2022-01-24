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
typedef  int /*<<< orphan*/  IXMLDOMDocument ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  CLSCTX_INPROC_SERVER ; 
 int /*<<< orphan*/  CLSID_DOMDocument ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  IID_IXMLDOMDocument ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,scalar_t__) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  VARIANT_FALSE ; 

IXMLDOMDocument * FUNC6()
{
	IXMLDOMDocument *pDoc = NULL;
	HRESULT hr = FUNC0(&CLSID_DOMDocument, NULL, CLSCTX_INPROC_SERVER, &IID_IXMLDOMDocument, (void **) &pDoc);
	if(hr == S_OK)
	{
		FUNC1(pDoc, VARIANT_FALSE);  
		FUNC4(pDoc, VARIANT_FALSE);
		FUNC3(pDoc, VARIANT_FALSE);
		FUNC2(pDoc, VARIANT_FALSE);
	}
	else FUNC5(L"CoCreateInstance: 0x%08x\n", hr);
	return pDoc;
}