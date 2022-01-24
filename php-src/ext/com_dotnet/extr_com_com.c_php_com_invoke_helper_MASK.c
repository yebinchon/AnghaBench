#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  code_page; int /*<<< orphan*/  v; } ;
typedef  TYPE_1__ php_com_dotnet_object ;
typedef  int /*<<< orphan*/  WORD ;
typedef  int /*<<< orphan*/  VARIANT ;
struct TYPE_10__ {scalar_t__ cNamedArgs; scalar_t__ cArgs; } ;
struct TYPE_9__ {int /*<<< orphan*/  bstrHelpFile; int /*<<< orphan*/  bstrDescription; int /*<<< orphan*/  bstrSource; int /*<<< orphan*/  member_0; } ;
typedef  int HRESULT ;
typedef  TYPE_2__ EXCEPINFO ;
typedef  TYPE_3__ DISPPARAMS ;
typedef  int /*<<< orphan*/  DISPID ;

/* Variables and functions */
#define  DISP_E_BADPARAMCOUNT 131 
#define  DISP_E_EXCEPTION 130 
#define  DISP_E_PARAMNOTFOUND 129 
#define  DISP_E_TYPEMISMATCH 128 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ *,TYPE_2__*,unsigned int*) ; 
 int /*<<< orphan*/  IID_NULL ; 
 int /*<<< orphan*/  LOCALE_SYSTEM_DEFAULT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  html_errors ; 
 char* FUNC6 (int /*<<< orphan*/ ,size_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 char* FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (char**,int /*<<< orphan*/ ,char*,...) ; 

HRESULT FUNC11(php_com_dotnet_object *obj, DISPID id_member,
		WORD flags, DISPPARAMS *disp_params, VARIANT *v, int silent, int allow_noarg)
{
	HRESULT hr;
	unsigned int arg_err;
	EXCEPINFO e = {0};

	hr = FUNC1(FUNC4(&obj->v), id_member,
		&IID_NULL, LOCALE_SYSTEM_DEFAULT, flags, disp_params, v, &e, &arg_err);

	if (silent == 0 && FUNC0(hr)) {
		char *source = NULL, *desc = NULL, *msg = NULL;
		size_t source_len, desc_len;

		switch (hr) {
			case DISP_E_EXCEPTION:
				if (e.bstrSource) {
					source = FUNC6(e.bstrSource, &source_len, obj->code_page);
					FUNC3(e.bstrSource);
				}
				if (e.bstrDescription) {
					desc = FUNC6(e.bstrDescription, &desc_len, obj->code_page);
					FUNC3(e.bstrDescription);
				}
				if (FUNC2(html_errors)) {
					FUNC10(&msg, 0, "<b>Source:</b> %s<br/><b>Description:</b> %s",
						source ? source : "Unknown",
						desc ? desc : "Unknown");
				} else {
					FUNC10(&msg, 0, "Source: %s\nDescription: %s",
						source ? source : "Unknown",
						desc ? desc : "Unknown");
				}
				if (desc) {
					FUNC5(desc);
				}
				if (source) {
					FUNC5(source);
				}
				if (e.bstrHelpFile) {
					FUNC3(e.bstrHelpFile);
				}
				break;

			case DISP_E_PARAMNOTFOUND:
			case DISP_E_TYPEMISMATCH:
				desc = FUNC9(hr);
				FUNC10(&msg, 0, "Parameter %d: %s", arg_err, desc);
				FUNC8(desc);
				break;

			case DISP_E_BADPARAMCOUNT:
				if ((disp_params->cArgs + disp_params->cNamedArgs == 0) && (allow_noarg == 1)) {
					/* if getting a property and they are missing all parameters,
					 * we want to create a proxy object for them; so lets not create an
					 * exception here */
					msg = NULL;
					break;
				}
				/* else fall through */

			default:
				desc = FUNC9(hr);
				FUNC10(&msg, 0, "Error [0x%08x] %s", hr, desc);
				FUNC8(desc);
				break;
		}

		if (msg) {
			FUNC7(hr, msg);
			FUNC5(msg);
		}
	}

	return hr;
}