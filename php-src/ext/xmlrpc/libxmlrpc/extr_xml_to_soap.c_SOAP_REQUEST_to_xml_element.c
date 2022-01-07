
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int children; void* name; int attrs; } ;
typedef TYPE_1__ xml_element ;
typedef int buf ;
typedef scalar_t__ XMLRPC_REQUEST_TYPE ;
typedef int XMLRPC_REQUEST ;


 scalar_t__ Q_Head (int *) ;
 scalar_t__ Q_Next (int *) ;
 int Q_PushTail (int *,TYPE_1__*) ;
 scalar_t__ Q_Size (int *) ;
 TYPE_1__* SOAP_to_xml_element_worker (int ,int ) ;
 int TOKEN_FAULT ;
 int XMLRPC_RequestGetData (int ) ;
 char* XMLRPC_RequestGetMethodName (int ) ;
 scalar_t__ XMLRPC_RequestGetRequestType (int ) ;
 void* estrdup (char const*) ;
 TYPE_1__* new_attr (char*,char*) ;
 int snprintf (char*,int,char*,char const*,char*) ;
 int strcmp (void*,int ) ;
 int xml_elem_free_non_recurse (TYPE_1__*) ;
 TYPE_1__* xml_elem_new () ;
 scalar_t__ xmlrpc_request_call ;

xml_element* SOAP_REQUEST_to_xml_element(XMLRPC_REQUEST request) {
 xml_element* root = xml_elem_new();


 if (root) {
  xml_element* body = xml_elem_new();
  root->name = estrdup("SOAP-ENV:Envelope");


  Q_PushTail(&root->attrs, new_attr("xmlns:SOAP-ENV", "http://schemas.xmlsoap.org/soap/envelope/"));
  Q_PushTail(&root->attrs, new_attr("xmlns:xsi", "http://www.w3.org/1999/XMLSchema-instance"));
  Q_PushTail(&root->attrs, new_attr("xmlns:xsd", "http://www.w3.org/1999/XMLSchema"));
  Q_PushTail(&root->attrs, new_attr("xmlns:SOAP-ENC", "http://schemas.xmlsoap.org/soap/encoding/"));
  Q_PushTail(&root->attrs, new_attr("xmlns:si", "http://soapinterop.org/xsd"));
  Q_PushTail(&root->attrs, new_attr("xmlns:ns6", "http://testuri.org"));
  Q_PushTail(&root->attrs, new_attr("SOAP-ENV:encodingStyle", "http://schemas.xmlsoap.org/soap/encoding/"));




  if (body) {

   xml_element* el_serialized =
   SOAP_to_xml_element_worker(request,
            XMLRPC_RequestGetData(request));


   if (el_serialized && !strcmp(el_serialized->name, TOKEN_FAULT)) {
    Q_PushTail(&body->children, el_serialized);
   }

   else {
    xml_element* rpc = xml_elem_new();

    if (rpc) {
     const char* methodname = XMLRPC_RequestGetMethodName(request);
     XMLRPC_REQUEST_TYPE rtype = XMLRPC_RequestGetRequestType(request);


     if (rtype == xmlrpc_request_call) {
      if (methodname) {
       rpc->name = estrdup(methodname);
      }
     }



     else {
      char buf[128];
      snprintf(buf, sizeof(buf), "%s%s",
         methodname ? methodname : "",
         "Response");

      rpc->name = estrdup(buf);
     }



     if (rpc->name) {
      if(el_serialized) {
       if(Q_Size(&el_serialized->children) && rtype == xmlrpc_request_call) {
        xml_element* iter = (xml_element*)Q_Head(&el_serialized->children);
        while(iter) {
         Q_PushTail(&rpc->children, iter);
         iter = (xml_element*)Q_Next(&el_serialized->children);
        }
        xml_elem_free_non_recurse(el_serialized);
       }
       else {
        Q_PushTail(&rpc->children, el_serialized);
       }
      }

      Q_PushTail(&body->children, rpc);
     }
     else {


     }
    }
   }
   body->name = estrdup("SOAP-ENV:Body");
   Q_PushTail(&root->children, body);
  }
 }

 return root;
}
