
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int XMLRPC_SERVER ;


 int XMLRPC_ServerRegisterIntrospectionCallback (int ,int ) ;
 int XMLRPC_ServerRegisterMethod (int ,int ,int ) ;
 int xi_register_system_methods (int ) ;
 int xsm_lazy_doc_methods_cb ;
 int xsm_system_get_capabilities_cb ;
 int xsm_system_multicall_cb ;
 int xsm_token_system_get_capabilities ;
 int xsm_token_system_multicall ;

void xsm_register(XMLRPC_SERVER server) {
   xi_register_system_methods(server);

   XMLRPC_ServerRegisterMethod(server, xsm_token_system_multicall, xsm_system_multicall_cb);
   XMLRPC_ServerRegisterMethod(server, xsm_token_system_get_capabilities, xsm_system_get_capabilities_cb);


   XMLRPC_ServerRegisterIntrospectionCallback(server, xsm_lazy_doc_methods_cb);
}
