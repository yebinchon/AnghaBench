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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xi_system_describe_methods_cb ; 
 int /*<<< orphan*/  xi_system_list_methods_cb ; 
 int /*<<< orphan*/  xi_system_method_help_cb ; 
 int /*<<< orphan*/  xi_system_method_signature_cb ; 
 int /*<<< orphan*/  xi_token_system_describe_methods ; 
 int /*<<< orphan*/  xi_token_system_list_methods ; 
 int /*<<< orphan*/  xi_token_system_method_help ; 
 int /*<<< orphan*/  xi_token_system_method_signature ; 

void FUNC1(XMLRPC_SERVER server) {
   FUNC0(server, xi_token_system_list_methods, xi_system_list_methods_cb);
   FUNC0(server, xi_token_system_method_help, xi_system_method_help_cb);
   FUNC0(server, xi_token_system_method_signature, xi_system_method_signature_cb);
   FUNC0(server, xi_token_system_describe_methods, xi_system_describe_methods_cb);
}