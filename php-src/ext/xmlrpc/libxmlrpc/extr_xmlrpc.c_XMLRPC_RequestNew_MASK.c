#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* XMLRPC_REQUEST ;
struct TYPE_4__ {int /*<<< orphan*/  methodName; } ;
typedef  int /*<<< orphan*/  STRUCT_XMLRPC_REQUEST ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

XMLRPC_REQUEST FUNC2() {
   XMLRPC_REQUEST xRequest = FUNC0(1, sizeof(STRUCT_XMLRPC_REQUEST));
   if(xRequest) {
      FUNC1(&xRequest->methodName);
   }
   return xRequest;
}