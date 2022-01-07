
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xml_element ;
typedef int XMLRPC_VALUE ;


 int * DANDARPC_to_xml_element_worker (int *,int ) ;

xml_element* DANDARPC_VALUE_to_xml_element(XMLRPC_VALUE node) {
   return DANDARPC_to_xml_element_worker(((void*)0), node);
}
