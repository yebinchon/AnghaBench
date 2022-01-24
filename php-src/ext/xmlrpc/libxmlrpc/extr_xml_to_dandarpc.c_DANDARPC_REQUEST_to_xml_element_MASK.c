#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  children; int /*<<< orphan*/  text; void* name; int /*<<< orphan*/  attrs; void* val; void* key; } ;
typedef  TYPE_1__ xml_element_attr ;
typedef  TYPE_1__ xml_element ;
typedef  scalar_t__ XMLRPC_REQUEST_TYPE ;
typedef  scalar_t__ XMLRPC_REQUEST ;

/* Variables and functions */
 char const* ATTR_VERSION ; 
 TYPE_1__* FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 char* ELEM_METHODCALL ; 
 char const* ELEM_METHODNAME ; 
 char* ELEM_METHODRESPONSE ; 
 char const* ELEM_ROOT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 char const* VAL_VERSION_0_9 ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 char* FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 TYPE_1__* FUNC5 (int) ; 
 void* FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char const*) ; 
 TYPE_1__* FUNC8 () ; 
 scalar_t__ xmlrpc_request_call ; 
 scalar_t__ xmlrpc_request_response ; 

xml_element* FUNC9(XMLRPC_REQUEST request) {
   xml_element* wrapper = NULL;
   xml_element* root = NULL;
   if(request) {
      XMLRPC_REQUEST_TYPE request_type = FUNC4(request);
      const char* pStr = NULL;
      xml_element_attr* version = FUNC5(sizeof(xml_element_attr));
      version->key = FUNC6(ATTR_VERSION);
      version->val = FUNC6(VAL_VERSION_0_9);

      wrapper = FUNC8();

      if(request_type == xmlrpc_request_response) {
         pStr = ELEM_METHODRESPONSE;
      }
      else if(request_type == xmlrpc_request_call) {
         pStr = ELEM_METHODCALL;
      }
      if(pStr) {
         wrapper->name = FUNC6(pStr);
      }

      root = FUNC8();
      root->name = FUNC6(ELEM_ROOT);
      FUNC1(&root->attrs, version);
      FUNC1(&root->children, wrapper);

      pStr = FUNC3(request);

      if(pStr) {
         xml_element* method = FUNC8();
         method->name = FUNC6(ELEM_METHODNAME);
         FUNC7(&method->text, pStr);
         FUNC1(&wrapper->children, method);
      }
      FUNC1(&wrapper->children,
                 FUNC0(request, FUNC2(request)));
   }
   return root;
}