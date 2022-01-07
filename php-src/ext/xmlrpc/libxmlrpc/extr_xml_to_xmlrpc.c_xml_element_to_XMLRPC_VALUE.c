
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xml_element ;
typedef int XMLRPC_VALUE ;


 int xml_element_to_XMLRPC_REQUEST_worker (int *,int *,int *,int *) ;

XMLRPC_VALUE xml_element_to_XMLRPC_VALUE(xml_element* el)
{
   return xml_element_to_XMLRPC_REQUEST_worker(((void*)0), ((void*)0), ((void*)0), el);
}
