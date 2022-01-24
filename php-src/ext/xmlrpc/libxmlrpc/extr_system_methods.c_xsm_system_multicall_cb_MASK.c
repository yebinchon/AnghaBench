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
typedef  scalar_t__ XMLRPC_VALUE ;
typedef  int /*<<< orphan*/  XMLRPC_SERVER ;
typedef  scalar_t__ XMLRPC_REQUEST ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,char const*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,scalar_t__,void*) ; 
 char* FUNC9 (scalar_t__,char*) ; 
 scalar_t__ FUNC10 (scalar_t__,char*) ; 
 scalar_t__ FUNC11 (scalar_t__) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  xmlrpc_request_call ; 
 int /*<<< orphan*/  xmlrpc_vector_array ; 

XMLRPC_VALUE FUNC13(XMLRPC_SERVER server, XMLRPC_REQUEST input, void* userData) {
   XMLRPC_VALUE xArray = FUNC12(FUNC3(input));
   XMLRPC_VALUE xReturn = FUNC1(0, xmlrpc_vector_array);

   if (xArray) {
      XMLRPC_VALUE xMethodIter = FUNC12(xArray);

      while (xMethodIter) {
         XMLRPC_REQUEST request = FUNC4();
         if(request) {
            const char* methodName = FUNC9(xMethodIter, "methodName");
            XMLRPC_VALUE params = FUNC10(xMethodIter, "params");

            if(methodName && params) {
               XMLRPC_VALUE xRandomArray = FUNC1(0, xmlrpc_vector_array);
               FUNC6(request, methodName);
               FUNC5(request, params);
               FUNC7(request, xmlrpc_request_call);

               FUNC0(xRandomArray,
                                       FUNC8(server, request, userData));

               FUNC0(xReturn, xRandomArray);
            }
            FUNC2(request, 1);
         }
         xMethodIter = FUNC11(xArray);
      }
   }
   return xReturn;
}