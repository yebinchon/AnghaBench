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
typedef  int /*<<< orphan*/  XMLRPC_SERVER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xsm_lazy_doc_methods_cb ; 
 int /*<<< orphan*/  xsm_system_get_capabilities_cb ; 
 int /*<<< orphan*/  xsm_system_multicall_cb ; 
 int /*<<< orphan*/  xsm_token_system_get_capabilities ; 
 int /*<<< orphan*/  xsm_token_system_multicall ; 

void FUNC3(XMLRPC_SERVER server) {
   FUNC2(server);

   FUNC1(server, xsm_token_system_multicall, xsm_system_multicall_cb);
   FUNC1(server, xsm_token_system_get_capabilities, xsm_system_get_capabilities_cb);

   /* callback for documentation generation should it be requested */
   FUNC0(server, xsm_lazy_doc_methods_cb);
}