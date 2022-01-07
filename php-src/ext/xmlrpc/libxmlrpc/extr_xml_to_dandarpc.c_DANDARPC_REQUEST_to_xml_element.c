
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int children; int text; void* name; int attrs; void* val; void* key; } ;
typedef TYPE_1__ xml_element_attr ;
typedef TYPE_1__ xml_element ;
typedef scalar_t__ XMLRPC_REQUEST_TYPE ;
typedef scalar_t__ XMLRPC_REQUEST ;


 char const* ATTR_VERSION ;
 TYPE_1__* DANDARPC_to_xml_element_worker (scalar_t__,int ) ;
 char* ELEM_METHODCALL ;
 char const* ELEM_METHODNAME ;
 char* ELEM_METHODRESPONSE ;
 char const* ELEM_ROOT ;
 int Q_PushTail (int *,TYPE_1__*) ;
 char const* VAL_VERSION_0_9 ;
 int XMLRPC_RequestGetData (scalar_t__) ;
 char* XMLRPC_RequestGetMethodName (scalar_t__) ;
 scalar_t__ XMLRPC_RequestGetRequestType (scalar_t__) ;
 TYPE_1__* emalloc (int) ;
 void* estrdup (char const*) ;
 int simplestring_add (int *,char const*) ;
 TYPE_1__* xml_elem_new () ;
 scalar_t__ xmlrpc_request_call ;
 scalar_t__ xmlrpc_request_response ;

xml_element* DANDARPC_REQUEST_to_xml_element(XMLRPC_REQUEST request) {
   xml_element* wrapper = ((void*)0);
   xml_element* root = ((void*)0);
   if(request) {
      XMLRPC_REQUEST_TYPE request_type = XMLRPC_RequestGetRequestType(request);
      const char* pStr = ((void*)0);
      xml_element_attr* version = emalloc(sizeof(xml_element_attr));
      version->key = estrdup(ATTR_VERSION);
      version->val = estrdup(VAL_VERSION_0_9);

      wrapper = xml_elem_new();

      if(request_type == xmlrpc_request_response) {
         pStr = ELEM_METHODRESPONSE;
      }
      else if(request_type == xmlrpc_request_call) {
         pStr = ELEM_METHODCALL;
      }
      if(pStr) {
         wrapper->name = estrdup(pStr);
      }

      root = xml_elem_new();
      root->name = estrdup(ELEM_ROOT);
      Q_PushTail(&root->attrs, version);
      Q_PushTail(&root->children, wrapper);

      pStr = XMLRPC_RequestGetMethodName(request);

      if(pStr) {
         xml_element* method = xml_elem_new();
         method->name = estrdup(ELEM_METHODNAME);
         simplestring_add(&method->text, pStr);
         Q_PushTail(&wrapper->children, method);
      }
      Q_PushTail(&wrapper->children,
                 DANDARPC_to_xml_element_worker(request, XMLRPC_RequestGetData(request)));
   }
   return root;
}
