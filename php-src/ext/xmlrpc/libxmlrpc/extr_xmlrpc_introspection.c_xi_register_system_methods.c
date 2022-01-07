
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int XMLRPC_SERVER ;


 int XMLRPC_ServerRegisterMethod (int ,int ,int ) ;
 int xi_system_describe_methods_cb ;
 int xi_system_list_methods_cb ;
 int xi_system_method_help_cb ;
 int xi_system_method_signature_cb ;
 int xi_token_system_describe_methods ;
 int xi_token_system_list_methods ;
 int xi_token_system_method_help ;
 int xi_token_system_method_signature ;

void xi_register_system_methods(XMLRPC_SERVER server) {
   XMLRPC_ServerRegisterMethod(server, xi_token_system_list_methods, xi_system_list_methods_cb);
   XMLRPC_ServerRegisterMethod(server, xi_token_system_method_help, xi_system_method_help_cb);
   XMLRPC_ServerRegisterMethod(server, xi_token_system_method_signature, xi_system_method_signature_cb);
   XMLRPC_ServerRegisterMethod(server, xi_token_system_describe_methods, xi_system_describe_methods_cb);
}
