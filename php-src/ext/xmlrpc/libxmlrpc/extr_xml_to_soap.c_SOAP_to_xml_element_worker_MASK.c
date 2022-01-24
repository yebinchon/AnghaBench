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
struct TYPE_8__ {int /*<<< orphan*/  name; int /*<<< orphan*/  attrs; int /*<<< orphan*/  text; int /*<<< orphan*/  children; } ;
typedef  TYPE_1__ xml_element_attr ;
typedef  TYPE_1__ xml_element ;
typedef  int /*<<< orphan*/  time_t ;
struct tm {int dummy; } ;
struct buffer_st {int /*<<< orphan*/  offset; int /*<<< orphan*/  data; } ;
typedef  int /*<<< orphan*/  buf ;
typedef  int XMLRPC_VALUE_TYPE_EASY ;
typedef  scalar_t__ XMLRPC_VALUE ;
typedef  int /*<<< orphan*/  XMLRPC_REQUEST ;

/* Variables and functions */
 int BUF_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 char* TOKEN_ARRAY ; 
 int /*<<< orphan*/  TOKEN_ARRAY_TYPE ; 
 char* TOKEN_BASE64 ; 
 char* TOKEN_BOOLEAN ; 
 char* TOKEN_DATETIME ; 
 char* TOKEN_DOUBLE ; 
 char* TOKEN_FAULT ; 
 char* TOKEN_INT ; 
 char* TOKEN_NULL ; 
 char* TOKEN_STRING ; 
 int /*<<< orphan*/  TOKEN_TYPE ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 double FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int FUNC10 (scalar_t__) ; 
 scalar_t__ FUNC11 (scalar_t__) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 int FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (struct buffer_st*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct buffer_st*) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 scalar_t__ FUNC17 (scalar_t__,TYPE_1__*) ; 
 char* FUNC18 (scalar_t__) ; 
 int FUNC19 (scalar_t__) ; 
 struct tm* FUNC20 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC21 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (char*,int,char*,...) ; 
 int /*<<< orphan*/  FUNC25 (char*,int,char*,struct tm*) ; 
 TYPE_1__* FUNC26 () ; 
#define  xmlrpc_type_array 137 
#define  xmlrpc_type_base64 136 
#define  xmlrpc_type_boolean 135 
#define  xmlrpc_type_datetime 134 
#define  xmlrpc_type_double 133 
#define  xmlrpc_type_empty 132 
#define  xmlrpc_type_int 131 
#define  xmlrpc_type_mixed 130 
#define  xmlrpc_type_string 129 
#define  xmlrpc_type_struct 128 

xml_element* FUNC27(XMLRPC_REQUEST request, XMLRPC_VALUE node) {
#define BUF_SIZE 128
	xml_element* elem_val = NULL;
	if (node) {
		int bFreeNode = 0;  /* sometimes we may need to free 'node' variable */
		char buf[BUF_SIZE];
		XMLRPC_VALUE_TYPE_EASY type = FUNC10(node);
		char* pName = NULL, *pAttrType = NULL;

		/* create our return value element */
		elem_val = FUNC26();

		switch (type) {
		case xmlrpc_type_struct:
		case xmlrpc_type_mixed:
		case xmlrpc_type_array:
			if (type == xmlrpc_type_array) {
				/* array's are _very_ special in soap.
				   TODO: Should handle sparse/partial arrays here. */

				/* determine soap array type. */
				const char* type = FUNC18(node);
				xml_element_attr* attr_array_type = NULL;

				/* specify array kids type and array size. */
				FUNC24(buf, sizeof(buf), "%s[%i]", type, FUNC13(node));
				attr_array_type = FUNC21(TOKEN_ARRAY_TYPE, buf);

				FUNC0(&elem_val->attrs, attr_array_type);

				pAttrType = TOKEN_ARRAY;
			}
			/* check for fault, which is a rather special case.
			   (can't these people design anything consistent/simple/elegant?) */
			else if (type == xmlrpc_type_struct) {
				int fault_type = FUNC19(node);
				if (fault_type) {
					if (fault_type == 1) {
						/* gen fault from xmlrpc style fault codes
						    notice that we get a new node, which must be freed herein. */
						node = FUNC17(node, elem_val);
						bFreeNode = 1;
					}
					pName = TOKEN_FAULT;
				}
			}

			{
				/* recurse through sub-elements */
				XMLRPC_VALUE xIter = FUNC12(node);
				while ( xIter ) {
					xml_element* next_el = FUNC27(request, xIter);
					if (next_el) {
						FUNC0(&elem_val->children, next_el);
					}
					xIter = FUNC11(node);
				}
			}

			break;

			/* handle scalar types */
		case xmlrpc_type_empty:
			pAttrType = TOKEN_NULL;
			break;
		case xmlrpc_type_string:
			pAttrType = TOKEN_STRING;
			FUNC23(&elem_val->text, FUNC8(node), FUNC9(node));
			break;
		case xmlrpc_type_int:
			pAttrType = TOKEN_INT;
			FUNC24(buf, BUF_SIZE, "%i", FUNC7(node));
			FUNC22(&elem_val->text, buf);
			break;
		case xmlrpc_type_boolean:
			pAttrType = TOKEN_BOOLEAN;
			FUNC24(buf, BUF_SIZE, "%i", FUNC3(node));
			FUNC22(&elem_val->text, buf);
			break;
		case xmlrpc_type_double:
			pAttrType = TOKEN_DOUBLE;
			FUNC24(buf, BUF_SIZE, "%f", FUNC5(node));
			FUNC22(&elem_val->text, buf);
			break;
		case xmlrpc_type_datetime:
			{
				time_t tt = FUNC4(node);
				struct tm *tm = FUNC20 (&tt);
				pAttrType = TOKEN_DATETIME;
				if(FUNC25 (buf, BUF_SIZE, "%Y-%m-%dT%H:%M:%SZ", tm)) {
					FUNC22(&elem_val->text, buf);
				}
			}
			break;
		case xmlrpc_type_base64:
			{
				struct buffer_st buf;
				pAttrType = TOKEN_BASE64;
				FUNC14(&buf, FUNC2(node), FUNC9(node));
				FUNC23(&elem_val->text, buf.data, buf.offset );
				FUNC15(&buf);
			}
			break;
			break;
		default:
			break;
		}

		/* determining element's name is a bit tricky, due to soap semantics. */
		if (!pName) {
			/* if the value's type is known... */
			if (pAttrType) {
				/* see if it has an id (key). If so, use that as name, and type as an attribute. */
				pName = (char*)FUNC6(node);
				if (pName) {
					FUNC0(&elem_val->attrs, FUNC21(TOKEN_TYPE, pAttrType));
				}

				/* otherwise, use the type as the name. */
				else {
					pName = pAttrType;
				}
			}
			/* if the value's type is not known... (a rare case?) */
			else {
				/* see if it has an id (key). otherwise, default to generic "item" */
				pName = (char*)FUNC6(node);
				if (!pName) {
					pName = "item";
				}
			}
		}
		elem_val->name = FUNC16(pName);

		/* cleanup */
		if (bFreeNode) {
			FUNC1(node);
		}
	}
	return elem_val;
}