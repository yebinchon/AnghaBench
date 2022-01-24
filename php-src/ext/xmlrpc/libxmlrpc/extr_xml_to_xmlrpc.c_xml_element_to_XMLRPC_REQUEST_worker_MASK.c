#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  str; int /*<<< orphan*/  len; } ;
struct TYPE_5__ {int /*<<< orphan*/  children; TYPE_1__ text; scalar_t__ name; } ;
typedef  TYPE_2__ xml_element ;
struct buffer_st {int /*<<< orphan*/  offset; int /*<<< orphan*/  data; } ;
typedef  void* XMLRPC_VALUE ;
typedef  scalar_t__ XMLRPC_REQUEST ;

/* Variables and functions */
 int /*<<< orphan*/  ELEM_BASE64 ; 
 int /*<<< orphan*/  ELEM_BOOLEAN ; 
 int /*<<< orphan*/  ELEM_DATA ; 
 int /*<<< orphan*/  ELEM_DATETIME ; 
 int /*<<< orphan*/  ELEM_DOUBLE ; 
 int /*<<< orphan*/  ELEM_FAULT ; 
 int /*<<< orphan*/  ELEM_I4 ; 
 int /*<<< orphan*/  ELEM_INT ; 
 int /*<<< orphan*/  ELEM_METHODCALL ; 
 int /*<<< orphan*/  ELEM_METHODNAME ; 
 int /*<<< orphan*/  ELEM_METHODRESPONSE ; 
 int /*<<< orphan*/  ELEM_NAME ; 
 int /*<<< orphan*/  ELEM_PARAMS ; 
 int /*<<< orphan*/  ELEM_STRING ; 
 int /*<<< orphan*/  ELEM_STRUCT ; 
 int /*<<< orphan*/  ELEM_VALUE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (void*,void*) ; 
 void* FUNC4 () ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct buffer_st*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct buffer_st*) ; 
 int /*<<< orphan*/  FUNC20 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xmlrpc_case_exact ; 
 scalar_t__ xmlrpc_request_call ; 
 scalar_t__ xmlrpc_request_response ; 
 int /*<<< orphan*/  xmlrpc_vector_array ; 
 int /*<<< orphan*/  xmlrpc_vector_struct ; 

XMLRPC_VALUE FUNC21(XMLRPC_REQUEST request, XMLRPC_VALUE parent_vector, XMLRPC_VALUE current_val, xml_element* el) {
   if (!current_val) {
      /* This should only be the case for the first element */
      current_val = FUNC4();
   }

	if (el->name) {

      /* first, deal with the crazy/stupid fault format */
      if (!FUNC20(el->name, ELEM_FAULT)) {
			xml_element* fault_value = (xml_element*)FUNC0(&el->children);
			FUNC8(current_val, xmlrpc_vector_struct);

         if(fault_value) {
            xml_element* fault_struct = (xml_element*)FUNC0(&fault_value->children);
            if(fault_struct) {
               xml_element* iter = (xml_element*)FUNC0(&fault_struct->children);

               while (iter) {
                  XMLRPC_VALUE xNextVal = FUNC4();
                  FUNC21(request, current_val, xNextVal, iter);
                  FUNC3(current_val, xNextVal);
                  iter = (xml_element*)FUNC1(&fault_struct->children);
               }
            }
         }
      }
		else if (!FUNC20(el->name, ELEM_DATA)	/* should be ELEM_ARRAY, but there is an extra level. weird */
			 || (!FUNC20(el->name, ELEM_PARAMS) &&
				  (FUNC5(request) == xmlrpc_request_call)) ) {		/* this "PARAMS" concept is silly.  dave?! */
         xml_element* iter = (xml_element*)FUNC0(&el->children);
         FUNC8(current_val, xmlrpc_vector_array);

         while (iter) {
            XMLRPC_VALUE xNextVal = FUNC4();
            FUNC21(request, current_val, xNextVal, iter);
            FUNC3(current_val, xNextVal);
            iter = (xml_element*)FUNC1(&el->children);
         }
		}
		else if (!FUNC20(el->name, ELEM_STRUCT)) {
         xml_element* iter = (xml_element*)FUNC0(&el->children);
         FUNC8(current_val, xmlrpc_vector_struct);

         while ( iter ) {
            XMLRPC_VALUE xNextVal = FUNC4();
            FUNC21(request, current_val, xNextVal, iter);
            FUNC3(current_val, xNextVal);
            iter = (xml_element*)FUNC1(&el->children);
         }
		}
		else if (!FUNC20(el->name, ELEM_STRING) ||
                 (!FUNC20(el->name, ELEM_VALUE) && FUNC2(&el->children) == 0)) {
         FUNC15(current_val, el->text.str, el->text.len);
		}
		else if (!FUNC20(el->name, ELEM_NAME)) {
         FUNC13(current_val, el->text.str, 0, xmlrpc_case_exact);
		}
		else if (!FUNC20(el->name, ELEM_INT) || !FUNC20(el->name, ELEM_I4)) {
         FUNC14(current_val, FUNC17(el->text.str));
		}
		else if (!FUNC20(el->name, ELEM_BOOLEAN)) {
         FUNC10(current_val, FUNC17(el->text.str));
		}
		else if (!FUNC20(el->name, ELEM_DOUBLE)) {
         FUNC12(current_val, FUNC16(el->text.str));
		}
		else if (!FUNC20(el->name, ELEM_DATETIME)) {
         FUNC11(current_val, el->text.str);
		}
		else if (!FUNC20(el->name, ELEM_BASE64)) {
         struct buffer_st buf;
         FUNC18(&buf, el->text.str, el->text.len);
         FUNC9(current_val, buf.data, buf.offset);
         FUNC19(&buf);
		}
		else {
         xml_element* iter;

         if (!FUNC20(el->name, ELEM_METHODCALL)) {
            if (request) {
               FUNC7(request, xmlrpc_request_call);
            }
			}
			else if (!FUNC20(el->name, ELEM_METHODRESPONSE)) {
            if (request) {
               FUNC7(request, xmlrpc_request_response);
            }
			}
			else if (!FUNC20(el->name, ELEM_METHODNAME)) {
            if (request) {
               FUNC6(request, el->text.str);
            }
         }

         iter = (xml_element*)FUNC0(&el->children);
         while ( iter ) {
            FUNC21(request, parent_vector,
                                                 current_val, iter);
            iter = (xml_element*)FUNC1(&el->children);
         }
      }
   }
   return current_val;
}