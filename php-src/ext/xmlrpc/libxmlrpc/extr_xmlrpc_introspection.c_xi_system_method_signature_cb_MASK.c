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
struct TYPE_3__ {int /*<<< orphan*/ * desc; } ;
typedef  TYPE_1__ server_method ;
typedef  int /*<<< orphan*/ * XMLRPC_VALUE ;
typedef  int /*<<< orphan*/  XMLRPC_SERVER ;
typedef  int /*<<< orphan*/  XMLRPC_REQUEST ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 char const* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,void*) ; 
 TYPE_1__* FUNC10 (int /*<<< orphan*/ ,char const*) ; 
 char const* FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xi_token_params ; 
 int /*<<< orphan*/  xi_token_returns ; 
 int /*<<< orphan*/  xi_token_signatures ; 
 int /*<<< orphan*/  xi_token_type ; 
 int /*<<< orphan*/  xmlrpc_none ; 
 int /*<<< orphan*/  xmlrpc_vector_array ; 

__attribute__((used)) static XMLRPC_VALUE FUNC12(XMLRPC_SERVER server, XMLRPC_REQUEST input, void* userData) {
   const char* method = FUNC3(FUNC8(FUNC4(input)));
   XMLRPC_VALUE xResponse = NULL;

   /* lazy loading of introspection data */
   FUNC9(server, userData);

   if(method) {
      server_method* sm = FUNC10(server, method);
      if(sm && sm->desc) {
         XMLRPC_VALUE xTypesArray = FUNC2(NULL, xmlrpc_vector_array);
         XMLRPC_VALUE xIter, xParams, xSig, xSigIter;
         const char* type;

         /* array of possible signatures.  */
         xResponse = FUNC2(NULL, xmlrpc_vector_array);

         /* find first signature */
         xSig = FUNC6(sm->desc, xi_token_signatures);
         xSigIter = FUNC8( xSig );

         /* iterate through sigs */
         while(xSigIter) {
            /* first type is the return value */
            type = FUNC5(FUNC8(
                                                 FUNC6(xSigIter, xi_token_returns)),
                                                xi_token_type);
            FUNC0(xTypesArray,
                                    FUNC1(NULL,
                                                             type ? type : FUNC11(xmlrpc_none, 0),
                                    0));

            /* the rest are parameters */
            xParams = FUNC6(xSigIter, xi_token_params);
            xIter = FUNC8(xParams);

            /* iter through params, adding to types array */
            while(xIter) {
               FUNC0(xTypesArray,
                                       FUNC1(NULL,
                                                                FUNC5(xIter, xi_token_type),
                                                                0));
               xIter = FUNC7(xParams);
            }

            /* add types for this signature */
            FUNC0(xResponse, xTypesArray);

            xSigIter = FUNC7( xSig );
         }
      }
   }

   return xResponse;
}