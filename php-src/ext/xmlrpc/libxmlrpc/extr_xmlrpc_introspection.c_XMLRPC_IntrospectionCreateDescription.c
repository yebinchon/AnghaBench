
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int xml_element ;
typedef int * XMLRPC_VALUE ;
typedef TYPE_1__* XMLRPC_ERROR ;
struct TYPE_4__ {int xml_elem_error; } ;


 int xml_elem_free (int *) ;
 int * xml_elem_parse_buf (char const*,int ,int ,int *) ;
 int * xml_element_to_method_description (int *,TYPE_1__*) ;

XMLRPC_VALUE XMLRPC_IntrospectionCreateDescription(const char* xml, XMLRPC_ERROR err) {
   XMLRPC_VALUE xReturn = ((void*)0);
   xml_element* root = xml_elem_parse_buf(xml, 0, 0, err ? &err->xml_elem_error : ((void*)0));

   if(root) {
      xReturn = xml_element_to_method_description(root, err);

      xml_elem_free(root);
   }

   return xReturn;

}
