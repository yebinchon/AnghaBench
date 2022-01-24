#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ q_iter ;
struct TYPE_6__ {int b_called; int /*<<< orphan*/  (* method ) (TYPE_2__*,void*) ;} ;
typedef  TYPE_1__ doc_method ;
typedef  TYPE_2__* XMLRPC_SERVER ;
struct TYPE_7__ {int /*<<< orphan*/  docslist; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,void*) ; 

__attribute__((used)) static void FUNC4(XMLRPC_SERVER server, void* userData) {
   if(server) {
      q_iter qi = FUNC1(&server->docslist);
      while( qi ) {
         doc_method* dm = FUNC0(qi);
         if(dm && !dm->b_called) {
            dm->method(server, userData);
            dm->b_called = 1;
         }
         qi = FUNC2(qi);
      }
   }
}