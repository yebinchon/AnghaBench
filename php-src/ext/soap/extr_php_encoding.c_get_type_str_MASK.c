#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* xmlNsPtr ;
typedef  int /*<<< orphan*/  xmlNodePtr ;
typedef  int /*<<< orphan*/  smart_str ;
struct TYPE_3__ {scalar_t__ prefix; } ;

/* Variables and functions */
 scalar_t__ SOAP_1_1 ; 
 char* SOAP_1_1_ENC_NAMESPACE ; 
 scalar_t__ SOAP_1_2 ; 
 char* SOAP_1_2_ENC_NAMESPACE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  soap_version ; 
 scalar_t__ FUNC6 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 

__attribute__((used)) static void FUNC8(xmlNodePtr node, const char* ns, const char* type, smart_str* ret)
{

	if (ns) {
		xmlNsPtr xmlns;
		if (FUNC0(soap_version) == SOAP_1_2 &&
		    FUNC6(ns,SOAP_1_1_ENC_NAMESPACE) == 0) {
			ns = SOAP_1_2_ENC_NAMESPACE;
		} else if (FUNC0(soap_version) == SOAP_1_1 &&
		           FUNC6(ns,SOAP_1_2_ENC_NAMESPACE) == 0) {
			ns = SOAP_1_1_ENC_NAMESPACE;
		}
		xmlns = FUNC1(node, ns);
		FUNC5(ret, (char*)xmlns->prefix);
		FUNC3(ret, ':');
	}
	FUNC4(ret, type, FUNC7(type));
	FUNC2(ret);
}