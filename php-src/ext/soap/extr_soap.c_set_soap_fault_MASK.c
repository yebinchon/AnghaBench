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
typedef  int /*<<< orphan*/  zval ;

/* Variables and functions */
 scalar_t__ IS_OBJECT ; 
 scalar_t__ IS_UNDEF ; 
 int SOAP_1_1 ; 
 char* SOAP_1_1_ENV_NAMESPACE ; 
 int SOAP_1_2 ; 
 char* SOAP_1_2_ENV_NAMESPACE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  soap_fault_class_entry ; 
 int soap_version ; 
 scalar_t__ FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  zend_ce_exception ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int,char*) ; 

__attribute__((used)) static void FUNC7(zval *obj, char *fault_code_ns, char *fault_code, char *fault_string, char *fault_actor, zval *fault_detail, char *name) /* {{{ */
{
	if (FUNC1(obj) != IS_OBJECT) {
		FUNC4(obj, soap_fault_class_entry);
	}

	FUNC2(obj, "faultstring", fault_string ? fault_string : "");
	FUNC6(zend_ce_exception, obj, "message", sizeof("message")-1, (fault_string ? fault_string : ""));

	if (fault_code != NULL) {
		int soap_version = FUNC0(soap_version);

		if (fault_code_ns) {
			FUNC2(obj, "faultcode", fault_code);
			FUNC2(obj, "faultcodens", fault_code_ns);
		} else {
			if (soap_version == SOAP_1_1) {
				FUNC2(obj, "faultcode", fault_code);
				if (FUNC5(fault_code,"Client") == 0 ||
				    FUNC5(fault_code,"Server") == 0 ||
				    FUNC5(fault_code,"VersionMismatch") == 0 ||
			  	  FUNC5(fault_code,"MustUnderstand") == 0) {
					FUNC2(obj, "faultcodens", SOAP_1_1_ENV_NAMESPACE);
				}
			} else if (soap_version == SOAP_1_2) {
				if (FUNC5(fault_code,"Client") == 0) {
					FUNC2(obj, "faultcode", "Sender");
					FUNC2(obj, "faultcodens", SOAP_1_2_ENV_NAMESPACE);
				} else if (FUNC5(fault_code,"Server") == 0) {
					FUNC2(obj, "faultcode", "Receiver");
					FUNC2(obj, "faultcodens", SOAP_1_2_ENV_NAMESPACE);
				} else if (FUNC5(fault_code,"VersionMismatch") == 0 ||
				           FUNC5(fault_code,"MustUnderstand") == 0 ||
				           FUNC5(fault_code,"DataEncodingUnknown") == 0) {
					FUNC2(obj, "faultcode", fault_code);
					FUNC2(obj, "faultcodens", SOAP_1_2_ENV_NAMESPACE);
				} else {
					FUNC2(obj, "faultcode", fault_code);
				}
			}
		}
	}
	if (fault_actor != NULL) {
		FUNC2(obj, "faultactor", fault_actor);
	}
	if (fault_detail != NULL && FUNC1(fault_detail) != IS_UNDEF) {
		FUNC3(obj, "detail", fault_detail);
	}
	if (name != NULL) {
		FUNC2(obj, "_name", name);
	}
}