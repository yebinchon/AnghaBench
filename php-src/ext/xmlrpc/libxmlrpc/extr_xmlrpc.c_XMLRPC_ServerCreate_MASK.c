#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* XMLRPC_SERVER ;
struct TYPE_5__ {int /*<<< orphan*/  docslist; int /*<<< orphan*/  methodlist; } ;
typedef  int /*<<< orphan*/  STRUCT_XMLRPC_SERVER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

XMLRPC_SERVER FUNC3() {
   XMLRPC_SERVER server = FUNC1(1, sizeof(STRUCT_XMLRPC_SERVER));
   if(server) {
      FUNC0(&server->methodlist);
      FUNC0(&server->docslist);

      /* register system methods */
      FUNC2(server);
   }
   return server;
}