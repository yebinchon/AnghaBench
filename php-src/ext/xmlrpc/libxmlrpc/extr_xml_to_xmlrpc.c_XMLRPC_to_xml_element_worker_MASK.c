#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  children; void* name; int /*<<< orphan*/  text; } ;
typedef  TYPE_1__ xml_element ;
struct buffer_st {int /*<<< orphan*/  offset; int /*<<< orphan*/  data; } ;
typedef  scalar_t__ XMLRPC_VECTOR_TYPE ;
typedef  int XMLRPC_VALUE_TYPE ;
typedef  int /*<<< orphan*/ * XMLRPC_VALUE ;
typedef  scalar_t__ XMLRPC_REQUEST_TYPE ;

/* Variables and functions */
 int BUF_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ELEM_ARRAY ; 
 int /*<<< orphan*/  ELEM_BASE64 ; 
 int /*<<< orphan*/  ELEM_BOOLEAN ; 
 int /*<<< orphan*/  ELEM_DATA ; 
 int /*<<< orphan*/  ELEM_DATETIME ; 
 int /*<<< orphan*/  ELEM_DOUBLE ; 
 int /*<<< orphan*/  ELEM_FAULT ; 
 int /*<<< orphan*/  ELEM_FAULTCODE ; 
 int /*<<< orphan*/  ELEM_INT ; 
 int /*<<< orphan*/  ELEM_MEMBER ; 
 int /*<<< orphan*/  ELEM_NAME ; 
 int /*<<< orphan*/  ELEM_PARAM ; 
 int /*<<< orphan*/  ELEM_PARAMS ; 
 int /*<<< orphan*/  ELEM_STRING ; 
 int /*<<< orphan*/  ELEM_STRUCT ; 
 int /*<<< orphan*/  ELEM_VALUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 char* FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (char*,int,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct buffer_st*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct buffer_st*) ; 
 void* FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  precision ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (char*,int,char*,int) ; 
 TYPE_1__* FUNC22 () ; 
#define  xmlrpc_base64 138 
#define  xmlrpc_boolean 137 
#define  xmlrpc_datetime 136 
#define  xmlrpc_double 135 
#define  xmlrpc_empty 134 
#define  xmlrpc_int 133 
 scalar_t__ xmlrpc_request_call ; 
#define  xmlrpc_string 132 
#define  xmlrpc_vector 131 
#define  xmlrpc_vector_array 130 
#define  xmlrpc_vector_mixed 129 
 scalar_t__ xmlrpc_vector_none ; 
#define  xmlrpc_vector_struct 128 

xml_element* FUNC23(XMLRPC_VALUE current_vector, XMLRPC_VALUE node,
                                          XMLRPC_REQUEST_TYPE request_type, int depth) {
#define BUF_SIZE 512
   xml_element* root = NULL;
   if (node) {
      char buf[BUF_SIZE];
      XMLRPC_VALUE_TYPE type = FUNC10(node);
      XMLRPC_VECTOR_TYPE vtype = FUNC11(node);
      xml_element* elem_val = FUNC22();

      /* special case for when root element is not an array */
      if (depth == 0 &&
          !(type == xmlrpc_vector &&
            vtype == xmlrpc_vector_array &&
            request_type == xmlrpc_request_call) ) {
         int bIsFault = (vtype == xmlrpc_vector_struct && FUNC12(node, ELEM_FAULTCODE));

         xml_element* next_el = FUNC23(NULL, node, request_type, depth + 1);
         if (next_el) {
            FUNC1(&elem_val->children, next_el);
         }
         elem_val->name = FUNC18(bIsFault ? ELEM_FAULT : ELEM_PARAMS);
		}
		else {
         switch (type) {
			case xmlrpc_empty: /*  treat null value as empty string in xmlrpc. */
         case xmlrpc_string:
            elem_val->name = FUNC18(ELEM_STRING);
            FUNC20(&elem_val->text, FUNC8(node), FUNC9(node));
            break;
         case xmlrpc_int:
            elem_val->name = FUNC18(ELEM_INT);
            FUNC21(buf, BUF_SIZE, "%i", FUNC7(node));
            FUNC19(&elem_val->text, buf);
            break;
         case xmlrpc_boolean:
            elem_val->name = FUNC18(ELEM_BOOLEAN);
            FUNC21(buf, BUF_SIZE, "%i", FUNC3(node));
            FUNC19(&elem_val->text, buf);
            break;
         case xmlrpc_double:
            {
                                elem_val->name = FUNC18(ELEM_DOUBLE);
                FUNC15(buf, BUF_SIZE, "%.*G", (int) FUNC0(precision), FUNC5(node));
                FUNC19(&elem_val->text, buf);
            }
            break;
         case xmlrpc_datetime:
            elem_val->name = FUNC18(ELEM_DATETIME);
            FUNC19(&elem_val->text, FUNC4(node));
            break;
         case xmlrpc_base64:
            {
               struct buffer_st buf;
               elem_val->name = FUNC18(ELEM_BASE64);
               FUNC16(&buf, FUNC2(node), FUNC9(node));
               FUNC20(&elem_val->text, buf.data, buf.offset );
               FUNC17(&buf);
            }
            break;
         case xmlrpc_vector:
            {
               XMLRPC_VECTOR_TYPE my_type = FUNC11(node);
               XMLRPC_VALUE xIter = FUNC14(node);
               xml_element* root_vector_elem = elem_val;

               switch (my_type) {
               case xmlrpc_vector_array:
                  {
                      if(depth == 0) {
                         elem_val->name = FUNC18(ELEM_PARAMS);
                      }
                      else {
                         /* Hi my name is Dave and I like to make things as confusing
                          * as possible, thus I will throw in this 'data' element
                          * where it absolutely does not belong just so that people
                          * cannot code arrays and structs in a similar and straight
                          * forward manner. Have a good day.
                          *
                          * GRRRRRRRRR!
                          */
                         xml_element* data = FUNC22();
                         data->name = FUNC18(ELEM_DATA);

                         elem_val->name = FUNC18(ELEM_ARRAY);
                         FUNC1(&elem_val->children, data);
                         root_vector_elem = data;
                      }
                  }
                  break;
               case xmlrpc_vector_mixed:       /* not officially supported */
               case xmlrpc_vector_struct:
                  elem_val->name = FUNC18(ELEM_STRUCT);
                  break;
               default:
                  break;
               }

               /* recurse through sub-elements */
               while ( xIter ) {
                  xml_element* next_el = FUNC23(node, xIter, request_type, depth + 1);
                  if (next_el) {
                     FUNC1(&root_vector_elem->children, next_el);
                  }
                  xIter = FUNC13(node);
               }
            }
            break;
         default:
            break;
         }
      }

      {
         XMLRPC_VECTOR_TYPE vtype = FUNC11(current_vector);

         if (depth == 1) {
            xml_element* value = FUNC22();
            value->name = FUNC18(ELEM_VALUE);

            /* yet another hack for the "fault" crap */
            if (FUNC12(node, ELEM_FAULTCODE)) {
               root = value;
				}
				else {
               xml_element* param = FUNC22();
               param->name = FUNC18(ELEM_PARAM);

               FUNC1(&param->children, value);

               root = param;
            }
            FUNC1(&value->children, elem_val);
			}
			else if (vtype == xmlrpc_vector_struct || vtype == xmlrpc_vector_mixed) {
            xml_element* member = FUNC22();
            xml_element* name = FUNC22();
            xml_element* value = FUNC22();

            member->name = FUNC18(ELEM_MEMBER);
            name->name = FUNC18(ELEM_NAME);
            value->name = FUNC18(ELEM_VALUE);

            FUNC19(&name->text, FUNC6(node));

            FUNC1(&member->children, name);
            FUNC1(&member->children, value);
            FUNC1(&value->children, elem_val);

            root = member;
			}
			else if (vtype == xmlrpc_vector_array) {
            xml_element* value = FUNC22();

            value->name = FUNC18(ELEM_VALUE);

            FUNC1(&value->children, elem_val);

            root = value;
			}
			else if (vtype == xmlrpc_vector_none) {
            /* no parent.  non-op */
            root = elem_val;
			}
			else {
            xml_element* value = FUNC22();

            value->name = FUNC18(ELEM_VALUE);

            FUNC1(&value->children, elem_val);

            root = value;
         }
      }
   }
   return root;
}