
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int XMLRPC_VALUE ;
typedef int XMLRPC_SERVER ;


 int XMLRPC_CleanupValue (int ) ;
 int XMLRPC_IntrospectionCreateDescription (int ,int *) ;
 int XMLRPC_ServerAddIntrospectionData (int ,int ) ;
 int xsm_introspection_xml ;

__attribute__((used)) static void xsm_lazy_doc_methods_cb(XMLRPC_SERVER server, void* userData) {
   XMLRPC_VALUE xDesc = XMLRPC_IntrospectionCreateDescription(xsm_introspection_xml, ((void*)0));
   XMLRPC_ServerAddIntrospectionData(server, xDesc);
   XMLRPC_CleanupValue(xDesc);
}
