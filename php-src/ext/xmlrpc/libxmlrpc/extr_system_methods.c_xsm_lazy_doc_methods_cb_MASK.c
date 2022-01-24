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
typedef  int /*<<< orphan*/  XMLRPC_SERVER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xsm_introspection_xml ; 

__attribute__((used)) static void FUNC3(XMLRPC_SERVER server, void* userData) {
   XMLRPC_VALUE xDesc = FUNC1(xsm_introspection_xml, NULL);
   FUNC2(server, xDesc);
   FUNC0(xDesc);
}