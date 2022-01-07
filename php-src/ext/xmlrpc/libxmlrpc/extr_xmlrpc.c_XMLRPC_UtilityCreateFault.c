
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ len; int str; } ;
typedef TYPE_1__ simplestring ;
typedef int * XMLRPC_VALUE ;


 int * XMLRPC_CreateVector (int *,int ) ;
 int XMLRPC_VectorAppendInt (int *,char*,int) ;
 int XMLRPC_VectorAppendString (int *,char*,int ,scalar_t__) ;
 int simplestring_add (TYPE_1__*,char const*) ;
 int simplestring_free (TYPE_1__*) ;
 int simplestring_init (TYPE_1__*) ;

 char* xmlrpc_error_application_str ;

 char* xmlrpc_error_internal_server_str ;

 char* xmlrpc_error_invalid_params_str ;

 char* xmlrpc_error_invalid_xmlrpc_str ;

 char* xmlrpc_error_parse_bad_encoding_str ;

 char* xmlrpc_error_parse_unknown_encoding_str ;

 char* xmlrpc_error_parse_xml_syntax_str ;

 char* xmlrpc_error_system_str ;

 char* xmlrpc_error_transport_str ;

 char* xmlrpc_error_unknown_method_str ;
 int xmlrpc_vector_struct ;

XMLRPC_VALUE XMLRPC_UtilityCreateFault(int fault_code, const char* fault_string) {
   XMLRPC_VALUE xOutput = ((void*)0);

   char* string = ((void*)0);
   simplestring description;
   simplestring_init(&description);

   switch (fault_code) {
 case 131:
  string = xmlrpc_error_parse_xml_syntax_str;
  break;
 case 132:
  string = xmlrpc_error_parse_unknown_encoding_str;
  break;
 case 133:
  string = xmlrpc_error_parse_bad_encoding_str;
  break;
 case 134:
  string = xmlrpc_error_invalid_xmlrpc_str;
  break;
 case 128:
  string = xmlrpc_error_unknown_method_str;
  break;
 case 135:
  string = xmlrpc_error_invalid_params_str;
  break;
 case 136:
  string = xmlrpc_error_internal_server_str;
  break;
 case 137:
  string = xmlrpc_error_application_str;
  break;
 case 130:
  string = xmlrpc_error_system_str;
  break;
 case 129:
  string = xmlrpc_error_transport_str;
  break;
   }

   simplestring_add(&description, string);

   if(string && fault_string) {
      simplestring_add(&description, "\n\n");
   }
   simplestring_add(&description, fault_string);


   if(description.len) {
      xOutput = XMLRPC_CreateVector(((void*)0), xmlrpc_vector_struct);

  XMLRPC_VectorAppendString (xOutput, "faultString", description.str,
           description.len);
      XMLRPC_VectorAppendInt(xOutput, "faultCode", fault_code);
   }

   simplestring_free(&description);

   return xOutput;
}
