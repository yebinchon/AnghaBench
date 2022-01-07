
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int str; int len; } ;
struct TYPE_5__ {int children; TYPE_1__ text; scalar_t__ name; } ;
typedef TYPE_2__ xml_element ;
struct buffer_st {int offset; int data; } ;
typedef void* XMLRPC_VALUE ;
typedef scalar_t__ XMLRPC_REQUEST ;


 int ELEM_BASE64 ;
 int ELEM_BOOLEAN ;
 int ELEM_DATA ;
 int ELEM_DATETIME ;
 int ELEM_DOUBLE ;
 int ELEM_FAULT ;
 int ELEM_I4 ;
 int ELEM_INT ;
 int ELEM_METHODCALL ;
 int ELEM_METHODNAME ;
 int ELEM_METHODRESPONSE ;
 int ELEM_NAME ;
 int ELEM_PARAMS ;
 int ELEM_STRING ;
 int ELEM_STRUCT ;
 int ELEM_VALUE ;
 scalar_t__ Q_Head (int *) ;
 scalar_t__ Q_Next (int *) ;
 scalar_t__ Q_Size (int *) ;
 int XMLRPC_AddValueToVector (void*,void*) ;
 void* XMLRPC_CreateValueEmpty () ;
 scalar_t__ XMLRPC_RequestGetRequestType (scalar_t__) ;
 int XMLRPC_RequestSetMethodName (scalar_t__,int ) ;
 int XMLRPC_RequestSetRequestType (scalar_t__,scalar_t__) ;
 int XMLRPC_SetIsVector (void*,int ) ;
 int XMLRPC_SetValueBase64 (void*,int ,int ) ;
 int XMLRPC_SetValueBoolean (void*,int ) ;
 int XMLRPC_SetValueDateTime_ISO8601 (void*,int ) ;
 int XMLRPC_SetValueDouble (void*,int ) ;
 int XMLRPC_SetValueID_Case (void*,int ,int ,int ) ;
 int XMLRPC_SetValueInt (void*,int ) ;
 int XMLRPC_SetValueString (void*,int ,int ) ;
 int atof (int ) ;
 int atoi (int ) ;
 int base64_decode_xmlrpc (struct buffer_st*,int ,int ) ;
 int buffer_delete (struct buffer_st*) ;
 int strcmp (scalar_t__,int ) ;
 int xmlrpc_case_exact ;
 scalar_t__ xmlrpc_request_call ;
 scalar_t__ xmlrpc_request_response ;
 int xmlrpc_vector_array ;
 int xmlrpc_vector_struct ;

XMLRPC_VALUE xml_element_to_XMLRPC_REQUEST_worker(XMLRPC_REQUEST request, XMLRPC_VALUE parent_vector, XMLRPC_VALUE current_val, xml_element* el) {
   if (!current_val) {

      current_val = XMLRPC_CreateValueEmpty();
   }

 if (el->name) {


      if (!strcmp(el->name, ELEM_FAULT)) {
   xml_element* fault_value = (xml_element*)Q_Head(&el->children);
   XMLRPC_SetIsVector(current_val, xmlrpc_vector_struct);

         if(fault_value) {
            xml_element* fault_struct = (xml_element*)Q_Head(&fault_value->children);
            if(fault_struct) {
               xml_element* iter = (xml_element*)Q_Head(&fault_struct->children);

               while (iter) {
                  XMLRPC_VALUE xNextVal = XMLRPC_CreateValueEmpty();
                  xml_element_to_XMLRPC_REQUEST_worker(request, current_val, xNextVal, iter);
                  XMLRPC_AddValueToVector(current_val, xNextVal);
                  iter = (xml_element*)Q_Next(&fault_struct->children);
               }
            }
         }
      }
  else if (!strcmp(el->name, ELEM_DATA)
    || (!strcmp(el->name, ELEM_PARAMS) &&
      (XMLRPC_RequestGetRequestType(request) == xmlrpc_request_call)) ) {
         xml_element* iter = (xml_element*)Q_Head(&el->children);
         XMLRPC_SetIsVector(current_val, xmlrpc_vector_array);

         while (iter) {
            XMLRPC_VALUE xNextVal = XMLRPC_CreateValueEmpty();
            xml_element_to_XMLRPC_REQUEST_worker(request, current_val, xNextVal, iter);
            XMLRPC_AddValueToVector(current_val, xNextVal);
            iter = (xml_element*)Q_Next(&el->children);
         }
  }
  else if (!strcmp(el->name, ELEM_STRUCT)) {
         xml_element* iter = (xml_element*)Q_Head(&el->children);
         XMLRPC_SetIsVector(current_val, xmlrpc_vector_struct);

         while ( iter ) {
            XMLRPC_VALUE xNextVal = XMLRPC_CreateValueEmpty();
            xml_element_to_XMLRPC_REQUEST_worker(request, current_val, xNextVal, iter);
            XMLRPC_AddValueToVector(current_val, xNextVal);
            iter = (xml_element*)Q_Next(&el->children);
         }
  }
  else if (!strcmp(el->name, ELEM_STRING) ||
                 (!strcmp(el->name, ELEM_VALUE) && Q_Size(&el->children) == 0)) {
         XMLRPC_SetValueString(current_val, el->text.str, el->text.len);
  }
  else if (!strcmp(el->name, ELEM_NAME)) {
         XMLRPC_SetValueID_Case(current_val, el->text.str, 0, xmlrpc_case_exact);
  }
  else if (!strcmp(el->name, ELEM_INT) || !strcmp(el->name, ELEM_I4)) {
         XMLRPC_SetValueInt(current_val, atoi(el->text.str));
  }
  else if (!strcmp(el->name, ELEM_BOOLEAN)) {
         XMLRPC_SetValueBoolean(current_val, atoi(el->text.str));
  }
  else if (!strcmp(el->name, ELEM_DOUBLE)) {
         XMLRPC_SetValueDouble(current_val, atof(el->text.str));
  }
  else if (!strcmp(el->name, ELEM_DATETIME)) {
         XMLRPC_SetValueDateTime_ISO8601(current_val, el->text.str);
  }
  else if (!strcmp(el->name, ELEM_BASE64)) {
         struct buffer_st buf;
         base64_decode_xmlrpc(&buf, el->text.str, el->text.len);
         XMLRPC_SetValueBase64(current_val, buf.data, buf.offset);
         buffer_delete(&buf);
  }
  else {
         xml_element* iter;

         if (!strcmp(el->name, ELEM_METHODCALL)) {
            if (request) {
               XMLRPC_RequestSetRequestType(request, xmlrpc_request_call);
            }
   }
   else if (!strcmp(el->name, ELEM_METHODRESPONSE)) {
            if (request) {
               XMLRPC_RequestSetRequestType(request, xmlrpc_request_response);
            }
   }
   else if (!strcmp(el->name, ELEM_METHODNAME)) {
            if (request) {
               XMLRPC_RequestSetMethodName(request, el->text.str);
            }
         }

         iter = (xml_element*)Q_Head(&el->children);
         while ( iter ) {
            xml_element_to_XMLRPC_REQUEST_worker(request, parent_vector,
                                                 current_val, iter);
            iter = (xml_element*)Q_Next(&el->children);
         }
      }
   }
   return current_val;
}
