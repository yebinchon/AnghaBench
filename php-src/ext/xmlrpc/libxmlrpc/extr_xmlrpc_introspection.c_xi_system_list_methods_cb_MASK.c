#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ server_method ;
typedef  scalar_t__ q_iter ;
typedef  int /*<<< orphan*/  XMLRPC_VALUE ;
typedef  TYPE_2__* XMLRPC_SERVER ;
typedef  int /*<<< orphan*/  XMLRPC_REQUEST ;
struct TYPE_6__ {int /*<<< orphan*/  methodlist; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xmlrpc_vector_array ; 

__attribute__((used)) static XMLRPC_VALUE FUNC5(XMLRPC_SERVER server, XMLRPC_REQUEST input, void* userData) {
   XMLRPC_VALUE xResponse = FUNC3(NULL, xmlrpc_vector_array);

   q_iter qi = FUNC1(&server->methodlist);
   while( qi ) {
      server_method* sm = FUNC0(qi);
      if(sm) {
         FUNC4(xResponse, 0, sm->name, 0);
      }
      qi = FUNC2(qi);
   }
   return xResponse;
}