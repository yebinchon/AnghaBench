
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xml_element ;
typedef int XMLRPC_VALUE ;


 int * XMLRPC_VALUE_to_xml_element (int ) ;
 int xml_elem_free (int *) ;
 char* xml_elem_serialize_to_string (int *,int *,int*) ;

char* XMLRPC_VALUE_ToXML(XMLRPC_VALUE val, int* buf_len) {
   xml_element *root_elem = XMLRPC_VALUE_to_xml_element(val);
   char* pRet = ((void*)0);

   if(root_elem) {
      pRet = xml_elem_serialize_to_string(root_elem, ((void*)0), buf_len);
      xml_elem_free(root_elem);
   }
   return pRet;
}
