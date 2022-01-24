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

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,char const*,int /*<<< orphan*/ ) ; 

XMLRPC_VALUE FUNC3(const char* id, const char* s, int len) {
   XMLRPC_VALUE val = FUNC0();
   if(val) {
      FUNC1(val, s, len);
      if(id) {
         FUNC2(val, id, 0);
      }
   }
   return val;
}