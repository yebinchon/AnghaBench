#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  children; void* name; int /*<<< orphan*/  text; } ;
typedef  TYPE_1__ xml_element ;
typedef  scalar_t__ XMLRPC_VALUE ;
typedef  scalar_t__ XMLRPC_REQUEST_TYPE ;
typedef  scalar_t__ XMLRPC_REQUEST ;

/* Variables and functions */
 char* ELEM_METHODCALL ; 
 char const* ELEM_METHODNAME ; 
 char* ELEM_METHODRESPONSE ; 
 char const* ELEM_PARAMS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 char* FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 void* FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char const*) ; 
 TYPE_1__* FUNC7 () ; 
 scalar_t__ xmlrpc_request_call ; 
 scalar_t__ xmlrpc_request_response ; 

xml_element* FUNC8(XMLRPC_REQUEST request) {
   xml_element* wrapper = NULL;
   if (request) {
      const char* pStr = NULL;
      XMLRPC_REQUEST_TYPE request_type = FUNC3(request);
      XMLRPC_VALUE xParams = FUNC1(request);

      wrapper = FUNC7();

      if (request_type == xmlrpc_request_call) {
         pStr = ELEM_METHODCALL;
		}
		else if (request_type == xmlrpc_request_response) {
         pStr = ELEM_METHODRESPONSE;
      }
      if (pStr) {
         wrapper->name = FUNC5(pStr);
      }

		if(request_type == xmlrpc_request_call) {
      pStr = FUNC2(request);

      if (pStr) {
         xml_element* method = FUNC7();
         method->name = FUNC5(ELEM_METHODNAME);
         FUNC6(&method->text, pStr);
         FUNC0(&wrapper->children, method);
      }
		}
      if (xParams) {
         FUNC0(&wrapper->children,
                    FUNC4(NULL, FUNC1(request), FUNC3(request), 0));
		}
		else {
         /* Despite the spec, the xml-rpc list folk want me to send an empty params element */
         xml_element* params = FUNC7();
         params->name = FUNC5(ELEM_PARAMS);
         FUNC0(&wrapper->children, params);
      }
   }
   return wrapper;
}