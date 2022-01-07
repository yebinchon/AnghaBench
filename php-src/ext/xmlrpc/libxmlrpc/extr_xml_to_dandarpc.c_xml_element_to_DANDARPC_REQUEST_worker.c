
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {char const* key; char* val; } ;
typedef TYPE_2__ xml_element_attr ;
struct TYPE_7__ {int str; int len; } ;
struct TYPE_9__ {char const* name; TYPE_1__ text; int children; int attrs; } ;
typedef TYPE_3__ xml_element ;
struct buffer_st {int offset; int data; } ;
typedef void* XMLRPC_VALUE ;
typedef scalar_t__ XMLRPC_REQUEST ;


 int ATTR_ARRAY ;
 int ATTR_BASE64 ;
 int ATTR_BOOLEAN ;
 int ATTR_DATETIME ;
 int ATTR_DOUBLE ;
 int ATTR_ID ;
 int ATTR_INT ;
 int ATTR_MIXED ;
 int ATTR_SCALAR ;
 int ATTR_STRING ;
 int ATTR_STRUCT ;
 int ATTR_TYPE ;
 int ATTR_VECTOR ;
 int ELEM_METHODCALL ;
 int ELEM_METHODNAME ;
 int ELEM_METHODRESPONSE ;
 TYPE_2__* Q_Head (int *) ;
 TYPE_2__* Q_Next (int *) ;
 int XMLRPC_AddValueToVector (void*,void*) ;
 void* XMLRPC_CreateValueEmpty () ;
 int XMLRPC_RequestSetMethodName (scalar_t__,int ) ;
 int XMLRPC_RequestSetRequestType (scalar_t__,int ) ;
 int XMLRPC_SetIsVector (void*,int ) ;
 int XMLRPC_SetValueBase64 (void*,int ,int ) ;
 int XMLRPC_SetValueBoolean (void*,int ) ;
 int XMLRPC_SetValueDateTime_ISO8601 (void*,int ) ;
 int XMLRPC_SetValueDouble (void*,int ) ;
 int XMLRPC_SetValueID_Case (void*,char const*,int ,int ) ;
 int XMLRPC_SetValueInt (void*,int ) ;
 int XMLRPC_SetValueString (void*,int ,int ) ;
 int atof (int ) ;
 int atoi (int ) ;
 int base64_decode_xmlrpc (struct buffer_st*,int ,int ) ;
 int buffer_delete (struct buffer_st*) ;
 int strcmp (char const*,int ) ;
 int xmlrpc_case_exact ;
 int xmlrpc_request_call ;
 int xmlrpc_request_response ;
 int xmlrpc_vector_array ;
 int xmlrpc_vector_mixed ;
 int xmlrpc_vector_struct ;

XMLRPC_VALUE xml_element_to_DANDARPC_REQUEST_worker(XMLRPC_REQUEST request, XMLRPC_VALUE xCurrent, xml_element* el) {
   if(!xCurrent) {
      xCurrent = XMLRPC_CreateValueEmpty();
   }

   if(el->name) {
      const char* id = ((void*)0);
      const char* type = ((void*)0);
      xml_element_attr* attr_iter = Q_Head(&el->attrs);

      while(attr_iter) {
         if(!strcmp(attr_iter->key, ATTR_ID)) {
            id = attr_iter->val;
         }
         if(!strcmp(attr_iter->key, ATTR_TYPE)) {
            type = attr_iter->val;
         }
         attr_iter = Q_Next(&el->attrs);
      }

      if(id) {
         XMLRPC_SetValueID_Case(xCurrent, id, 0, xmlrpc_case_exact);
      }

      if(!strcmp(el->name, ATTR_SCALAR)) {
         if(!type || !strcmp(type, ATTR_STRING)) {
            XMLRPC_SetValueString(xCurrent, el->text.str, el->text.len);
         }
         else if(!strcmp(type, ATTR_INT)) {
            XMLRPC_SetValueInt(xCurrent, atoi(el->text.str));
         }
         else if(!strcmp(type, ATTR_BOOLEAN)) {
            XMLRPC_SetValueBoolean(xCurrent, atoi(el->text.str));
         }
         else if(!strcmp(type, ATTR_DOUBLE)) {
            XMLRPC_SetValueDouble(xCurrent, atof(el->text.str));
         }
         else if(!strcmp(type, ATTR_DATETIME)) {
            XMLRPC_SetValueDateTime_ISO8601(xCurrent, el->text.str);
         }
         else if(!strcmp(type, ATTR_BASE64)) {
            struct buffer_st buf;
            base64_decode_xmlrpc(&buf, el->text.str, el->text.len);
            XMLRPC_SetValueBase64(xCurrent, buf.data, buf.offset);
            buffer_delete(&buf);
         }
      }
      else if(!strcmp(el->name, ATTR_VECTOR)) {
         xml_element* iter = (xml_element*)Q_Head(&el->children);

         if(!type || !strcmp(type, ATTR_MIXED)) {
            XMLRPC_SetIsVector(xCurrent, xmlrpc_vector_mixed);
         }
         else if(!strcmp(type, ATTR_ARRAY)) {
    XMLRPC_SetIsVector(xCurrent, xmlrpc_vector_array);
         }
         else if(!strcmp(type, ATTR_STRUCT)) {
            XMLRPC_SetIsVector(xCurrent, xmlrpc_vector_struct);
         }
         while( iter ) {
            XMLRPC_VALUE xNext = XMLRPC_CreateValueEmpty();
            xml_element_to_DANDARPC_REQUEST_worker(request, xNext, iter);
            XMLRPC_AddValueToVector(xCurrent, xNext);
            iter = (xml_element*)Q_Next(&el->children);
         }
      }
      else {
         xml_element* iter = (xml_element*)Q_Head(&el->children);
         while( iter ) {
            xml_element_to_DANDARPC_REQUEST_worker(request, xCurrent, iter);
            iter = (xml_element*)Q_Next(&el->children);
         }

         if(!strcmp(el->name, ELEM_METHODCALL)) {
            if(request) {
               XMLRPC_RequestSetRequestType(request, xmlrpc_request_call);
            }
         }
         else if(!strcmp(el->name, ELEM_METHODRESPONSE)) {
            if(request) {
               XMLRPC_RequestSetRequestType(request, xmlrpc_request_response);
            }
         }
         else if(!strcmp(el->name, ELEM_METHODNAME)) {
            if(request) {
               XMLRPC_RequestSetMethodName(request, el->text.str);
            }
         }
      }
   }
   return xCurrent;
}
