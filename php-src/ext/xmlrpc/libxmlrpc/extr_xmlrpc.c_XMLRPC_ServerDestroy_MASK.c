#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  docslist; int /*<<< orphan*/  methodlist; scalar_t__ xIntrospection; scalar_t__ desc; struct TYPE_8__* name; } ;
typedef  TYPE_1__ server_method ;
typedef  TYPE_1__ doc_method ;
typedef  TYPE_1__* XMLRPC_SERVER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

void FUNC5(XMLRPC_SERVER server) {
   if(server) {
      doc_method* dm = FUNC1(&server->docslist);
      server_method* sm = FUNC1(&server->methodlist);
      while( dm ) {
         FUNC4(dm);
         dm = FUNC2(&server->docslist);
      }
      while( sm ) {
         FUNC4(sm->name);
         if(sm->desc) {
            FUNC3(sm->desc);
         }
         FUNC4(sm);
         sm = FUNC2(&server->methodlist);
      }
      if (server->xIntrospection) {
         FUNC3(server->xIntrospection);
      }

      FUNC0(&server->methodlist);
      FUNC0(&server->docslist);
      FUNC4(server);
   }
}