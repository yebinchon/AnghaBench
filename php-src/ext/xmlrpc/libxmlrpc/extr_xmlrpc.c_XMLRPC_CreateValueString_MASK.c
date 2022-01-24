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
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*,int) ; 

XMLRPC_VALUE FUNC3(const char* id, const char* val, int len) {
   XMLRPC_VALUE value = NULL;
   if(val) {
      value = FUNC0();
      if(value) {
         FUNC2(value, val, len);
         if(id) {
            FUNC1(value, id, 0);
         }
      }
   }
   return value;
}