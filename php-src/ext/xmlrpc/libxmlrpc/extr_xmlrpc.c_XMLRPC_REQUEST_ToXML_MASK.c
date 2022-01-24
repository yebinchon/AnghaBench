#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xml_element ;
typedef  TYPE_2__* XMLRPC_REQUEST ;
struct TYPE_7__ {scalar_t__ version; int /*<<< orphan*/  xml_elem_opts; } ;
struct TYPE_8__ {TYPE_1__ output; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 scalar_t__ xmlrpc_version_1_0 ; 
 scalar_t__ xmlrpc_version_none ; 
 scalar_t__ xmlrpc_version_simple ; 
 scalar_t__ xmlrpc_version_soap_1_1 ; 

char* FUNC5(XMLRPC_REQUEST request, int* buf_len) {
      char* pRet = NULL;
	if (request) {
		xml_element *root_elem = NULL;
		if (request->output.version == xmlrpc_version_simple) {
			root_elem = FUNC0 (request);
		}
		else if (request->output.version == xmlrpc_version_1_0 ||
					request->output.version == xmlrpc_version_none) {
			root_elem = FUNC2 (request);
		}
		else if (request->output.version == xmlrpc_version_soap_1_1) {
			root_elem = FUNC1 (request);
		}

      if(root_elem) {
			pRet =
			FUNC4 (root_elem,
													&request->output.xml_elem_opts,
													buf_len);
         FUNC3(root_elem);
      }
   }
	return pRet;
}