#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xml_element ;
typedef  int /*<<< orphan*/ * XMLRPC_VALUE ;
typedef  TYPE_1__* XMLRPC_ERROR ;
struct TYPE_4__ {int /*<<< orphan*/  xml_elem_error; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 

XMLRPC_VALUE FUNC3(const char* xml, XMLRPC_ERROR err) {
   XMLRPC_VALUE xReturn = NULL;
   xml_element* root = FUNC1(xml, 0, 0, err ? &err->xml_elem_error : NULL);

   if(root) {
      xReturn = FUNC2(root, err);

      FUNC0(root);
   }

   return xReturn;

}