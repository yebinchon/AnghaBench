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
typedef  int /*<<< orphan*/ * XMLRPC_VALUE ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char const*) ; 
 int /*<<< orphan*/  xi_token_name ; 

__attribute__((used)) static inline XMLRPC_VALUE FUNC4(XMLRPC_VALUE list, const char* needle) {
   XMLRPC_VALUE xIter = FUNC2(list);
   while(xIter) {
      const char* name = FUNC0(xIter, xi_token_name);
      if(name && !FUNC3(name, needle)) {
         return xIter;
      }
      xIter = FUNC1(list);
   }
   return NULL;
}