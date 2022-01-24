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
struct TYPE_7__ {int /*<<< orphan*/ * desc; } ;
typedef  TYPE_1__ server_method ;
typedef  scalar_t__ q_iter ;
typedef  scalar_t__ XMLRPC_VALUE_TYPE ;
typedef  int /*<<< orphan*/ * XMLRPC_VALUE ;
typedef  TYPE_2__* XMLRPC_SERVER ;
typedef  int /*<<< orphan*/  XMLRPC_REQUEST ;
struct TYPE_8__ {int /*<<< orphan*/  methodlist; int /*<<< orphan*/  xIntrospection; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,void*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ xmlrpc_string ; 
 scalar_t__ xmlrpc_vector ; 
 int /*<<< orphan*/  xmlrpc_vector_array ; 
 int /*<<< orphan*/  xmlrpc_vector_struct ; 

__attribute__((used)) static XMLRPC_VALUE FUNC13(XMLRPC_SERVER server, XMLRPC_REQUEST input, void* userData) {
   XMLRPC_VALUE xParams = FUNC10(FUNC7(input));
   XMLRPC_VALUE xResponse = FUNC4(NULL, xmlrpc_vector_struct);
   XMLRPC_VALUE xMethodList = FUNC4("methodList", xmlrpc_vector_array);
   XMLRPC_VALUE xTypeList = NULL;
   int bAll = 1;

   /* lazy loading of introspection data */
   FUNC11(server, userData);

   xTypeList = FUNC8(server->xIntrospection, "typeList");

   FUNC3(xResponse, xTypeList);
   FUNC3(xResponse, xMethodList);

   /* check if we have any param */
   if(xParams) {
      /* check if string or vector (1 or n) */
      XMLRPC_VALUE_TYPE type = FUNC6(xParams);
      if(type == xmlrpc_string) {
         /* just one.  spit it out. */
         FUNC12(server, xMethodList, FUNC5(xParams));
         bAll = 0;
      }
      else if(type == xmlrpc_vector) {
         /* multiple.  spit all out */
         XMLRPC_VALUE xIter = FUNC10(xParams);
         while(xIter) {
            FUNC12(server, xMethodList, FUNC5(xIter));
            xIter = FUNC9(xParams);
         }
         bAll = 0;
      }
   }

   /* otherwise, default to sending all methods */
   if(bAll) {
      q_iter qi = FUNC1(&server->methodlist);
      while( qi ) {
         server_method* sm = FUNC0(qi);
         if(sm) {
            FUNC3(xMethodList, sm->desc);
         }
         qi = FUNC2(qi);
      }
   }

   return xResponse;
}