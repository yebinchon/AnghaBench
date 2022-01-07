
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int xml_element ;
typedef TYPE_2__* XMLRPC_REQUEST ;
struct TYPE_7__ {scalar_t__ version; int xml_elem_opts; } ;
struct TYPE_8__ {TYPE_1__ output; } ;


 int * DANDARPC_REQUEST_to_xml_element (TYPE_2__*) ;
 int * SOAP_REQUEST_to_xml_element (TYPE_2__*) ;
 int * XMLRPC_REQUEST_to_xml_element (TYPE_2__*) ;
 int xml_elem_free (int *) ;
 char* xml_elem_serialize_to_string (int *,int *,int*) ;
 scalar_t__ xmlrpc_version_1_0 ;
 scalar_t__ xmlrpc_version_none ;
 scalar_t__ xmlrpc_version_simple ;
 scalar_t__ xmlrpc_version_soap_1_1 ;

char* XMLRPC_REQUEST_ToXML(XMLRPC_REQUEST request, int* buf_len) {
      char* pRet = ((void*)0);
 if (request) {
  xml_element *root_elem = ((void*)0);
  if (request->output.version == xmlrpc_version_simple) {
   root_elem = DANDARPC_REQUEST_to_xml_element (request);
  }
  else if (request->output.version == xmlrpc_version_1_0 ||
     request->output.version == xmlrpc_version_none) {
   root_elem = XMLRPC_REQUEST_to_xml_element (request);
  }
  else if (request->output.version == xmlrpc_version_soap_1_1) {
   root_elem = SOAP_REQUEST_to_xml_element (request);
  }

      if(root_elem) {
   pRet =
   xml_elem_serialize_to_string (root_elem,
             &request->output.xml_elem_opts,
             buf_len);
         xml_elem_free(root_elem);
      }
   }
 return pRet;
}
