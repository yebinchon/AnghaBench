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
typedef  TYPE_1__* XMLRPC_VALUE ;
typedef  scalar_t__ XMLRPC_CASE ;
struct TYPE_7__ {int len; char* str; } ;
struct TYPE_6__ {TYPE_2__ id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 char FUNC4 (char) ; 
 char FUNC5 (char) ; 
 scalar_t__ xmlrpc_case_lower ; 
 scalar_t__ xmlrpc_case_upper ; 

const char *FUNC6(XMLRPC_VALUE value, const char* id, int len, XMLRPC_CASE id_case) {
   const char* pRetval = NULL;
   if(value) {
      if(id) {
         FUNC3(&value->id);
         (len > 0) ? FUNC2(&value->id, id, len) :
                     FUNC1(&value->id, id);

         /* upper or lower case string in place if required. could be a separate func. */
         if(id_case == xmlrpc_case_lower || id_case == xmlrpc_case_upper) {
            int i;
            for(i = 0; i < value->id.len; i++) {
					value->id.str[i] =
					(id_case ==
					 xmlrpc_case_lower) ? FUNC4 (value->id.
															 str[i]) : FUNC5 (value->
																					  id.
																					  str[i]);
            }
         }

         pRetval = value->id.str;

#ifdef XMLRPC_DEBUG_REFCOUNT
         printf("set value id: %s\n", pRetval);
#endif
      }
   }

   return pRetval;
}