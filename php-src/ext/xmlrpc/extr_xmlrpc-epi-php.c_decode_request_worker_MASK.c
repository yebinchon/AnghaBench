#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
typedef  scalar_t__ XMLRPC_REQUEST ;
struct TYPE_6__ {int /*<<< orphan*/  encoding; } ;
struct TYPE_5__ {int /*<<< orphan*/  member_0; } ;
struct TYPE_7__ {TYPE_2__ xml_elem_opts; TYPE_1__ member_0; } ;
typedef  TYPE_3__ STRUCT_XMLRPC_REQUEST_INPUT_OPTIONS ;

/* Variables and functions */
 int /*<<< orphan*/  ENCODING_DEFAULT ; 
 scalar_t__ FUNC0 (char*,int,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 char* FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 scalar_t__ xmlrpc_request_call ; 

void FUNC9(char *xml_in, int xml_in_len, char *encoding_in, zval* method_name_out, zval *retval) /* {{{ */
{
	XMLRPC_REQUEST response;
	STRUCT_XMLRPC_REQUEST_INPUT_OPTIONS opts = {{0}};
	const char *method_name;
	opts.xml_elem_opts.encoding = encoding_in ? FUNC8(encoding_in) : ENCODING_DEFAULT;

	/* generate XMLRPC_REQUEST from raw xml */
	response = FUNC0(xml_in, xml_in_len, &opts);
	if (response) {
		FUNC7(retval);
		/* convert xmlrpc data to native php types */
		FUNC5(FUNC2(response), retval);

		if (FUNC4(response) == xmlrpc_request_call) {
			if (method_name_out) {
				method_name = FUNC3(response);
				if (method_name) {
					FUNC6(method_name_out, method_name);
				} else {
					FUNC7(retval);
				}
			}
		}

		/* dust, sweep, and mop */
		FUNC1(response, 1);
	}
}