#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {void* val; int /*<<< orphan*/  children; int /*<<< orphan*/  text; int /*<<< orphan*/  attrs; void* key; void* name; } ;
typedef  TYPE_2__ xml_element_attr ;
typedef  TYPE_2__ xml_element ;
struct buffer_st {int /*<<< orphan*/  offset; int /*<<< orphan*/  data; } ;
typedef  int /*<<< orphan*/  XMLRPC_VECTOR_TYPE ;
typedef  int XMLRPC_VALUE_TYPE ;
typedef  scalar_t__ XMLRPC_VALUE ;
typedef  TYPE_4__* XMLRPC_REQUEST_OUTPUT_OPTIONS ;
typedef  scalar_t__ XMLRPC_REQUEST ;
struct TYPE_10__ {scalar_t__ verbosity; } ;
struct TYPE_12__ {TYPE_1__ xml_elem_opts; } ;

/* Variables and functions */
 char* ATTR_ARRAY ; 
 char* ATTR_BASE64 ; 
 char* ATTR_BOOLEAN ; 
 char* ATTR_DATETIME ; 
 char* ATTR_DOUBLE ; 
 char const* ATTR_ID ; 
 char* ATTR_INT ; 
 char* ATTR_MIXED ; 
 char const* ATTR_SCALAR ; 
 char* ATTR_STRING ; 
 char* ATTR_STRUCT ; 
 char const* ATTR_TYPE ; 
 char const* ATTR_VECTOR ; 
 int BUF_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
 char* FUNC3 (scalar_t__) ; 
 double FUNC4 (scalar_t__) ; 
 char* FUNC5 (scalar_t__) ; 
 int FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 TYPE_4__* FUNC11 (scalar_t__) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 scalar_t__ FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (struct buffer_st*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct buffer_st*) ; 
 TYPE_2__* FUNC16 (int) ; 
 void* FUNC17 (char const*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (char*,int,char*,double) ; 
 TYPE_2__* FUNC21 () ; 
 scalar_t__ xml_elem_no_white_space ; 
#define  xmlrpc_base64 137 
#define  xmlrpc_boolean 136 
#define  xmlrpc_datetime 135 
#define  xmlrpc_double 134 
#define  xmlrpc_int 133 
#define  xmlrpc_string 132 
#define  xmlrpc_vector 131 
#define  xmlrpc_vector_array 130 
#define  xmlrpc_vector_mixed 129 
#define  xmlrpc_vector_struct 128 

xml_element* FUNC22(XMLRPC_REQUEST request, XMLRPC_VALUE node) {
#define BUF_SIZE 512
   xml_element* root = NULL;
   if(node) {
      char buf[BUF_SIZE];
      const char* id = FUNC5(node);
      XMLRPC_VALUE_TYPE type = FUNC9(node);
      XMLRPC_REQUEST_OUTPUT_OPTIONS output = FUNC11(request);
      int bNoAddType = (type == xmlrpc_string && request && output && output->xml_elem_opts.verbosity == xml_elem_no_white_space);
      xml_element* elem_val = FUNC21();
      const char* pAttrType = NULL;

      xml_element_attr* attr_type = bNoAddType ? NULL : FUNC16(sizeof(xml_element_attr));

      if(attr_type) {
         attr_type->key = FUNC17(ATTR_TYPE);
         attr_type->val = 0;
         FUNC0(&elem_val->attrs, attr_type);
      }

      elem_val->name = (type == xmlrpc_vector) ? FUNC17(ATTR_VECTOR) : FUNC17(ATTR_SCALAR);

      if(id && *id) {
         xml_element_attr* attr_id = FUNC16(sizeof(xml_element_attr));
         if(attr_id) {
            attr_id->key = FUNC17(ATTR_ID);
            attr_id->val = FUNC17(id);
            FUNC0(&elem_val->attrs, attr_id);
         }
      }

      switch(type) {
         case xmlrpc_string:
            pAttrType = ATTR_STRING;
            FUNC19(&elem_val->text, FUNC7(node), FUNC8(node));
            break;
         case xmlrpc_int:
            pAttrType = ATTR_INT;
            FUNC20(buf, BUF_SIZE, "%i", FUNC6(node));
            FUNC18(&elem_val->text, buf);
            break;
         case xmlrpc_boolean:
            pAttrType = ATTR_BOOLEAN;
            FUNC20(buf, BUF_SIZE, "%i", FUNC2(node));
            FUNC18(&elem_val->text, buf);
            break;
         case xmlrpc_double:
            pAttrType = ATTR_DOUBLE;
            FUNC20(buf, BUF_SIZE, "%f", FUNC4(node));
            FUNC18(&elem_val->text, buf);
            break;
         case xmlrpc_datetime:
            pAttrType = ATTR_DATETIME;
            FUNC18(&elem_val->text, FUNC3(node));
            break;
         case xmlrpc_base64:
            {
               struct buffer_st buf;
               pAttrType = ATTR_BASE64;
               FUNC14(&buf, FUNC1(node), FUNC8(node));
               FUNC19(&elem_val->text, buf.data, buf.offset );
               FUNC15(&buf);
            }
            break;
         case xmlrpc_vector:
            {
               XMLRPC_VECTOR_TYPE my_type = FUNC10(node);
               XMLRPC_VALUE xIter = FUNC13(node);

               switch(my_type) {
                  case xmlrpc_vector_array:
                     pAttrType = ATTR_ARRAY;
                     break;
                  case xmlrpc_vector_mixed:
                     pAttrType = ATTR_MIXED;
                     break;
                  case xmlrpc_vector_struct:
                     pAttrType = ATTR_STRUCT;
                     break;
                  default:
                     break;
               }

               /* recurse through sub-elements */
               while( xIter ) {
                  xml_element* next_el = FUNC22(request, xIter);
                  if(next_el) {
                     FUNC0(&elem_val->children, next_el);
                  }
                  xIter = FUNC12(node);
               }
            }
            break;
         default:
            break;
      }
      if(pAttrType && attr_type && !bNoAddType) {
         attr_type->val = FUNC17(pAttrType);
      }
      root = elem_val;
   }
   return root;
}