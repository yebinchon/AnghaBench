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
typedef  int /*<<< orphan*/ * XMLRPC_REQUEST_OUTPUT_OPTIONS ;
typedef  TYPE_1__* XMLRPC_REQUEST ;
struct TYPE_3__ {int /*<<< orphan*/  output; } ;
typedef  int /*<<< orphan*/  STRUCT_XMLRPC_REQUEST_OUTPUT_OPTIONS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

XMLRPC_REQUEST_OUTPUT_OPTIONS FUNC1(XMLRPC_REQUEST request, XMLRPC_REQUEST_OUTPUT_OPTIONS output) {
   if(request && output) {
		FUNC0 (&request->output, output,
				  sizeof (STRUCT_XMLRPC_REQUEST_OUTPUT_OPTIONS));
      return &request->output;
   }
   return NULL;
}