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
typedef  int /*<<< orphan*/  xml_element ;
typedef  int /*<<< orphan*/  XMLRPC_VALUE ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 

char* FUNC3(XMLRPC_VALUE val, int* buf_len) {
   xml_element *root_elem = FUNC0(val);
   char* pRet = NULL;

   if(root_elem) {
      pRet = FUNC2(root_elem, NULL, buf_len);
      FUNC1(root_elem);
   }
   return pRet;
}