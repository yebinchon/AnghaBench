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
struct TYPE_6__ {scalar_t__ desc; } ;
typedef  TYPE_1__ server_method ;
typedef  scalar_t__ XMLRPC_VALUE ;
typedef  TYPE_2__* XMLRPC_SERVER ;
struct TYPE_7__ {scalar_t__ xIntrospection; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (scalar_t__,char*) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 TYPE_1__* FUNC9 (TYPE_2__*,char const*) ; 
 scalar_t__ FUNC10 (scalar_t__,char*) ; 
 int /*<<< orphan*/  xi_token_name ; 
 int /*<<< orphan*/  xmlrpc_vector_struct ; 

int FUNC11(XMLRPC_SERVER server, XMLRPC_VALUE desc) {
   int bSuccess = 0;
   if(server && desc) {
      XMLRPC_VALUE xNewTypes = FUNC5(desc, "typeList");
      XMLRPC_VALUE xNewMethods = FUNC5(desc, "methodList");
      XMLRPC_VALUE xServerTypes = FUNC5(server->xIntrospection, "typeList");

      if(xNewMethods) {
         XMLRPC_VALUE xMethod = FUNC8(xNewMethods);

         while(xMethod) {
            const char* name = FUNC4(xMethod, xi_token_name);
            server_method* sm = FUNC9(server, name);

            if(sm) {
               if(sm->desc) {
                  FUNC1(sm->desc);
               }
               sm->desc = FUNC2(xMethod);
               bSuccess = 1;
            }

            xMethod = FUNC6(xNewMethods);
         }
      }
      if(xNewTypes) {
         if(!xServerTypes) {
            if(!server->xIntrospection) {
               server->xIntrospection = FUNC3(NULL, xmlrpc_vector_struct);
            }

            FUNC0(server->xIntrospection, xNewTypes);
            bSuccess = 1;
         }
         else {
            XMLRPC_VALUE xIter = FUNC8(xNewTypes);
            while(xIter) {
               /* get rid of old values */
               XMLRPC_VALUE xPrev = FUNC10(xServerTypes, FUNC4(xIter, xi_token_name));
               if(xPrev) {
                  FUNC7(xServerTypes, xPrev);
               }
               FUNC0(xServerTypes, xIter);
               bSuccess = 1;
               xIter = FUNC6(xNewTypes);
            }
         }
      }
   }
   return bSuccess;
}