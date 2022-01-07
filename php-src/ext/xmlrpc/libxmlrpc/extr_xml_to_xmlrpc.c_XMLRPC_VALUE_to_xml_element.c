
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xml_element ;
typedef int XMLRPC_VALUE ;


 int * XMLRPC_to_xml_element_worker (int *,int ,int ,int ) ;
 int xmlrpc_request_none ;

xml_element* XMLRPC_VALUE_to_xml_element(XMLRPC_VALUE node) {
   return XMLRPC_to_xml_element_worker(((void*)0), node, xmlrpc_request_none, 0);
}
