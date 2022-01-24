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
typedef  int /*<<< orphan*/  XMLRPC_REQUEST ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xmlrpc_vector_struct ; 

XMLRPC_VALUE FUNC4(XMLRPC_SERVER server, XMLRPC_REQUEST input, void* userData) {
   XMLRPC_VALUE xReturn = FUNC1(0, xmlrpc_vector_struct);
   XMLRPC_VALUE xFaults = FUNC1("faults_interop", xmlrpc_vector_struct);
   XMLRPC_VALUE xIntro = FUNC1("introspection", xmlrpc_vector_struct);

   /* support for fault spec */
   FUNC3(xFaults, "specURL", "http://xmlrpc-epi.sourceforge.net/specs/rfc.fault_codes.php", 0);
   FUNC2(xFaults, "specVersion", 20010516);

   /* support for introspection spec */
   FUNC3(xIntro, "specURL", "http://xmlrpc-epi.sourceforge.net/specs/rfc.introspection.php", 0);
   FUNC2(xIntro, "specVersion", 20010516);

   FUNC0(xReturn,
                            xFaults,
                            xIntro,
                            NULL);

   return xReturn;

}