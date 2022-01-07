
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {char const* key; char* val; } ;
typedef TYPE_2__ xml_element_attr ;
struct TYPE_5__ {char const* str; int len; } ;
struct TYPE_7__ {char const* name; TYPE_1__ text; int children; int attrs; } ;
typedef TYPE_3__ xml_element ;
typedef int * XMLRPC_VALUE ;
typedef int XMLRPC_ERROR ;


 void* Q_Head (int *) ;
 void* Q_Next (int *) ;
 scalar_t__ Q_Size (int *) ;
 int XMLRPC_AddValueToVector (int *,int *) ;
 int * XMLRPC_CreateValueString (char const*,char const*,int ) ;
 int * XMLRPC_CreateVector (char*,int ) ;
 int XMLRPC_VectorAppendString (int *,int ,char const*,int ) ;
 int * describeValue_worker (char const*,char const*,char const*,int,char const*,int *) ;
 int strcmp (char const*,char*) ;
 int xi_token_name ;
 int xmlrpc_vector_array ;
 int xmlrpc_vector_mixed ;
 int xmlrpc_vector_struct ;

XMLRPC_VALUE xml_element_to_method_description(xml_element* el, XMLRPC_ERROR err) {
   XMLRPC_VALUE xReturn = ((void*)0);

   if(el->name) {
      const char* name = ((void*)0);
      const char* type = ((void*)0);
      const char* basetype = ((void*)0);
      const char* desc = ((void*)0);
      const char* def = ((void*)0);
      int optional = 0;
      xml_element_attr* attr_iter = Q_Head(&el->attrs);


      while(attr_iter) {
         if(!strcmp(attr_iter->key, "name")) {
            name = attr_iter->val;
         }
         else if(!strcmp(attr_iter->key, "type")) {
            type = attr_iter->val;
         }
         else if(!strcmp(attr_iter->key, "basetype")) {
            basetype = attr_iter->val;
         }
         else if(!strcmp(attr_iter->key, "desc")) {
            desc = attr_iter->val;
         }
         else if(!strcmp(attr_iter->key, "optional")) {
            if(attr_iter->val && !strcmp(attr_iter->val, "yes")) {
               optional = 1;
            }
         }
         else if(!strcmp(attr_iter->key, "default")) {
            def = attr_iter->val;
         }
         attr_iter = Q_Next(&el->attrs);
      }


      if(!strcmp(el->name, "value") || !strcmp(el->name, "typeDescription")) {
         XMLRPC_VALUE xSubList = ((void*)0);
         const char* ptype = !strcmp(el->name, "value") ? type : basetype;
         if(ptype) {
            if(Q_Size(&el->children) &&
               (!strcmp(ptype, "array") || !strcmp(ptype, "struct") || !strcmp(ptype, "mixed"))) {
               xSubList = XMLRPC_CreateVector("member", xmlrpc_vector_array);

               if(xSubList) {
                  xml_element* elem_iter = Q_Head(&el->children);
                  while(elem_iter) {
                     XMLRPC_AddValueToVector(xSubList,
                                             xml_element_to_method_description(elem_iter, err));
                     elem_iter = Q_Next(&el->children);
                  }
               }
            }
            xReturn = describeValue_worker(ptype, name, (desc ? desc : (xSubList ? ((void*)0) : el->text.str)), optional, def, xSubList);
         }
      }


      else if(!strcmp(el->name, "params") ||
              !strcmp(el->name, "returns") ||
              !strcmp(el->name, "signature")) {
         if(Q_Size(&el->children)) {
            xml_element* elem_iter = Q_Head(&el->children);
            xReturn = XMLRPC_CreateVector(!strcmp(el->name, "signature") ? ((void*)0) : el->name, xmlrpc_vector_struct);


            while(elem_iter) {
               XMLRPC_AddValueToVector(xReturn,
                                       xml_element_to_method_description(elem_iter, err));
               elem_iter = Q_Next(&el->children);
            }
         }
      }


      else if(!strcmp(el->name, "methodDescription")) {
         xml_element* elem_iter = Q_Head(&el->children);
         xReturn = XMLRPC_CreateVector(((void*)0), xmlrpc_vector_struct);

         XMLRPC_VectorAppendString(xReturn, xi_token_name, name, 0);

         while(elem_iter) {
            XMLRPC_AddValueToVector(xReturn,
                                    xml_element_to_method_description(elem_iter, err));
            elem_iter = Q_Next(&el->children);
         }
      }


      else if(!strcmp(el->name, "item")) {
         xReturn = XMLRPC_CreateValueString(name, el->text.str, el->text.len);
      }


      else if(Q_Size(&el->children)) {
         xml_element* elem_iter = Q_Head(&el->children);
         xReturn = XMLRPC_CreateVector(el->name, xmlrpc_vector_mixed);

         while(elem_iter) {
            XMLRPC_AddValueToVector(xReturn,
                                    xml_element_to_method_description(elem_iter, err));
            elem_iter = Q_Next(&el->children);
         }
      }




      else if(el->name && el->text.len) {
         xReturn = XMLRPC_CreateValueString(el->name, el->text.str, el->text.len);
      }
   }

   return xReturn;
}
