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
struct TYPE_5__ {scalar_t__ len; int /*<<< orphan*/  str; } ;
typedef  TYPE_1__ simplestring ;
typedef  int /*<<< orphan*/ * XMLRPC_VALUE ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
#define  xmlrpc_error_application 137 
 char* xmlrpc_error_application_str ; 
#define  xmlrpc_error_internal_server 136 
 char* xmlrpc_error_internal_server_str ; 
#define  xmlrpc_error_invalid_params 135 
 char* xmlrpc_error_invalid_params_str ; 
#define  xmlrpc_error_invalid_xmlrpc 134 
 char* xmlrpc_error_invalid_xmlrpc_str ; 
#define  xmlrpc_error_parse_bad_encoding 133 
 char* xmlrpc_error_parse_bad_encoding_str ; 
#define  xmlrpc_error_parse_unknown_encoding 132 
 char* xmlrpc_error_parse_unknown_encoding_str ; 
#define  xmlrpc_error_parse_xml_syntax 131 
 char* xmlrpc_error_parse_xml_syntax_str ; 
#define  xmlrpc_error_system 130 
 char* xmlrpc_error_system_str ; 
#define  xmlrpc_error_transport 129 
 char* xmlrpc_error_transport_str ; 
#define  xmlrpc_error_unknown_method 128 
 char* xmlrpc_error_unknown_method_str ; 
 int /*<<< orphan*/  xmlrpc_vector_struct ; 

XMLRPC_VALUE FUNC6(int fault_code, const char* fault_string) {
   XMLRPC_VALUE xOutput = NULL;

   char* string = NULL;
   simplestring description;
   FUNC5(&description);

   switch (fault_code) {
	case xmlrpc_error_parse_xml_syntax:
		string = xmlrpc_error_parse_xml_syntax_str;
		break;
	case xmlrpc_error_parse_unknown_encoding:
		string = xmlrpc_error_parse_unknown_encoding_str;
		break;
	case xmlrpc_error_parse_bad_encoding:
		string = xmlrpc_error_parse_bad_encoding_str;
		break;
	case xmlrpc_error_invalid_xmlrpc:
		string = xmlrpc_error_invalid_xmlrpc_str;
		break;
	case xmlrpc_error_unknown_method:
		string = xmlrpc_error_unknown_method_str;
		break;
	case xmlrpc_error_invalid_params:
		string = xmlrpc_error_invalid_params_str;
		break;
	case xmlrpc_error_internal_server:
		string = xmlrpc_error_internal_server_str;
		break;
	case xmlrpc_error_application:
		string = xmlrpc_error_application_str;
		break;
	case xmlrpc_error_system:
		string = xmlrpc_error_system_str;
		break;
	case xmlrpc_error_transport:
		string = xmlrpc_error_transport_str;
		break;
   }

   FUNC3(&description, string);

   if(string && fault_string) {
      FUNC3(&description, "\n\n");
   }
   FUNC3(&description, fault_string);


   if(description.len) {
      xOutput = FUNC0(NULL, xmlrpc_vector_struct);

		FUNC2 (xOutput, "faultString", description.str,
											description.len);
      FUNC1(xOutput, "faultCode", fault_code);
   }

   FUNC4(&description);

   return xOutput;
}