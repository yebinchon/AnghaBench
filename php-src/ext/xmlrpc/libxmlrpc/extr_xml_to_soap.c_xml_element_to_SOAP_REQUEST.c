
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xml_element ;
typedef int * XMLRPC_VALUE ;
typedef scalar_t__ XMLRPC_REQUEST ;


 int * XMLRPC_RequestSetData (scalar_t__,int ) ;
 int xml_element_to_SOAP_REQUEST_worker (scalar_t__,int *,int *,int *,int *,int ) ;

XMLRPC_VALUE xml_element_to_SOAP_REQUEST(XMLRPC_REQUEST request, xml_element* el)
{
 if (request) {
  return XMLRPC_RequestSetData(request, xml_element_to_SOAP_REQUEST_worker(request, ((void*)0), ((void*)0), ((void*)0), el, 0));
 }
 return ((void*)0);
}
