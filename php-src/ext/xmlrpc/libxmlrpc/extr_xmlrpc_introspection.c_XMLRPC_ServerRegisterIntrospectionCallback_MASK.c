#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ b_called; scalar_t__ method; } ;
typedef  TYPE_1__ doc_method ;
typedef  TYPE_2__* XMLRPC_SERVER ;
typedef  scalar_t__ XMLRPC_IntrospectionCallback ;
struct TYPE_8__ {int /*<<< orphan*/  docslist; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 TYPE_1__* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

int FUNC3(XMLRPC_SERVER server, XMLRPC_IntrospectionCallback cb) {
   int bSuccess = 0;
   if(server && cb) {

      doc_method* dm = FUNC1(1, sizeof(doc_method));

      if(dm) {
         dm->method = cb;
         dm->b_called = 0;

         if(FUNC0(&server->docslist, dm)) {
            bSuccess = 1;
         }
         else {
            FUNC2(dm);
         }
      }
   }
   return bSuccess;
}