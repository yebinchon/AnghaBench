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
typedef  int /*<<< orphan*/  XMLRPC_VALUE ;

/* Variables and functions */
 int /*<<< orphan*/  TOKEN_SOAP_FAULTCODE ; 
 int /*<<< orphan*/  TOKEN_SOAP_FAULTSTRING ; 
 int /*<<< orphan*/  TOKEN_XMLRPC_FAULTCODE ; 
 int /*<<< orphan*/  TOKEN_XMLRPC_FAULTSTRING ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC1(XMLRPC_VALUE node) {
	if (FUNC0(node, TOKEN_XMLRPC_FAULTCODE) &&
		 FUNC0(node, TOKEN_XMLRPC_FAULTSTRING)) {
		return 1;
	}
	else if (FUNC0(node, TOKEN_SOAP_FAULTCODE) &&
				FUNC0(node, TOKEN_SOAP_FAULTSTRING)) {
		return 2;
	}
	return 0;
}