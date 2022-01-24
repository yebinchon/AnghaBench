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
struct TYPE_3__ {scalar_t__ desc; } ;
typedef  TYPE_1__ server_method ;
typedef  int /*<<< orphan*/ * XMLRPC_VALUE ;
typedef  int /*<<< orphan*/  XMLRPC_SERVER ;
typedef  int /*<<< orphan*/  XMLRPC_REQUEST ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,void*) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ ,char const*) ; 
 char const* xi_token_empty ; 
 int /*<<< orphan*/  xi_token_purpose ; 

__attribute__((used)) static XMLRPC_VALUE FUNC7(XMLRPC_SERVER server, XMLRPC_REQUEST input, void* userData) {
   const char* method = FUNC1(FUNC4(FUNC2(input)));
   XMLRPC_VALUE xResponse = NULL;

   /* lazy loading of introspection data */
   FUNC5(server, userData);

   if(method) {
      server_method* sm = FUNC6(server, method);
      if(sm && sm->desc) {
         const char* help = FUNC3(sm->desc, xi_token_purpose);

         /* returns a documentation string, or empty string */
         xResponse = FUNC0(NULL, help ? help : xi_token_empty, 0);
      }
   }

   return xResponse;
}