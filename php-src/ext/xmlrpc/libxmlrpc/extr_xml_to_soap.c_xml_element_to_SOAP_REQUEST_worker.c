
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {char const* key; char* val; } ;
typedef TYPE_2__ xml_element_attr ;
struct TYPE_7__ {int len; int str; } ;
struct TYPE_9__ {char* name; int children; TYPE_1__ text; int attrs; } ;
typedef TYPE_3__ xml_element ;
struct buffer_st {int offset; int data; } ;
struct array_info {char* kids_type; } ;
typedef void* XMLRPC_VALUE ;
typedef scalar_t__ XMLRPC_REQUEST_TYPE ;
typedef int XMLRPC_REQUEST ;


 TYPE_2__* Q_Head (int *) ;
 TYPE_2__* Q_Next (int *) ;
 int Q_Size (int *) ;
 char* TOKEN_ACTOR ;
 char* TOKEN_ACTOR_NEXT ;
 char* TOKEN_ARRAY ;
 char* TOKEN_ARRAY_TYPE ;
 char* TOKEN_BASE64 ;
 char* TOKEN_BOOLEAN ;
 char* TOKEN_DATETIME ;
 char* TOKEN_DOUBLE ;
 char* TOKEN_FLOAT ;
 char* TOKEN_INT ;
 char* TOKEN_MUSTUNDERSTAND ;
 char* TOKEN_NULL ;
 char* TOKEN_STRING ;
 char* TOKEN_STRUCT ;
 char* TOKEN_TYPE ;
 int XMLRPC_AddValueToVector (void*,void*) ;
 void* XMLRPC_CreateValueEmpty () ;
 scalar_t__ XMLRPC_GetVectorType (void*) ;
 int XMLRPC_RequestGetError (int ) ;
 int XMLRPC_RequestSetError (int ,int ) ;
 int XMLRPC_RequestSetMethodName (int ,char const*) ;
 int XMLRPC_RequestSetRequestType (int ,scalar_t__) ;
 int XMLRPC_SetIsVector (void*,scalar_t__) ;
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
 int efree (struct array_info*) ;
 int gen_soap_fault (char*,char*,char*,char*) ;
 scalar_t__ is_soap_type (char*) ;
 struct array_info* parse_array_type_info (char const*) ;
 scalar_t__ strcasestr (char*,char*) ;
 char* strchr (char*,char) ;
 int strcmp (char const*,char*) ;
 scalar_t__ strstr (char*,char*) ;
 int xmlrpc_case_exact ;
 scalar_t__ xmlrpc_request_call ;
 scalar_t__ xmlrpc_request_none ;
 scalar_t__ xmlrpc_request_response ;
 scalar_t__ xmlrpc_vector_array ;
 scalar_t__ xmlrpc_vector_mixed ;
 scalar_t__ xmlrpc_vector_struct ;

XMLRPC_VALUE xml_element_to_SOAP_REQUEST_worker(XMLRPC_REQUEST request,
                XMLRPC_VALUE xParent,
                struct array_info* parent_array,
                XMLRPC_VALUE xCurrent,
                xml_element* el,
                int depth) {
 XMLRPC_REQUEST_TYPE rtype = xmlrpc_request_none;


 if (!xCurrent) {
  xCurrent = XMLRPC_CreateValueEmpty();
 }


 depth ++;


 if (el && el->name) {
  const char* id = ((void*)0);
  const char* type = ((void*)0), *arrayType=((void*)0), *actor = ((void*)0);
  xml_element_attr* attr_iter = Q_Head(&el->attrs);
  int b_must_understand = 0;


  if (is_soap_type(el->name)) {
   type = el->name;
  }


  else if (XMLRPC_GetVectorType(xParent) != xmlrpc_vector_array) {
   id = el->name;
   if(!strcmp(id, "item")) {
   }
  }


  while (attr_iter) {

   if (!strcmp(attr_iter->key, TOKEN_TYPE)) {
    type = attr_iter->val;
   }

   else if (!strcmp(attr_iter->key, TOKEN_ARRAY_TYPE)) {
    arrayType = attr_iter->val;
   }

   else if (!strcmp(attr_iter->key, TOKEN_MUSTUNDERSTAND)) {
    b_must_understand = strchr(attr_iter->val, '1') ? 1 : 0;
   }

   else if (!strcmp(attr_iter->key, TOKEN_ACTOR)) {
    actor = attr_iter->val;
   }
   attr_iter = Q_Next(&el->attrs);
  }


  if (b_must_understand) {



   if (!actor || !strcmp(actor, TOKEN_ACTOR_NEXT)) {



    XMLRPC_RequestSetError(request,
             gen_soap_fault("SOAP-ENV:MustUnderstand",
                  "SOAP Must Understand Error",
                  "", ""));
    return xCurrent;
   }
  }


  if (id) {
   XMLRPC_SetValueID_Case(xCurrent, id, 0, xmlrpc_case_exact);
  }



  if (depth == 3) {
   const char* methodname = el->name;
   char* p = ((void*)0);





   rtype =



   strstr(el->name, "esponse") ? xmlrpc_request_response : xmlrpc_request_call;

   XMLRPC_RequestSetRequestType(request, rtype);


   p = strchr(el->name, ':');
   if (p) {
    methodname = p + 1;
   }
   if (rtype == xmlrpc_request_call) {
    XMLRPC_RequestSetMethodName(request, methodname);
   }
  }



  if (!Q_Size(&el->children)) {
   if (!type && parent_array && parent_array->kids_type[0]) {
    type = parent_array->kids_type;
   }
   if (!type || !strcmp(type, TOKEN_STRING)) {
    XMLRPC_SetValueString(xCurrent, el->text.str, el->text.len);
   }
   else if (!strcmp(type, TOKEN_INT)) {
    XMLRPC_SetValueInt(xCurrent, atoi(el->text.str));
   }
   else if (!strcmp(type, TOKEN_BOOLEAN)) {
    XMLRPC_SetValueBoolean(xCurrent, atoi(el->text.str));
   }
   else if (!strcmp(type, TOKEN_DOUBLE) ||
      !strcmp(type, TOKEN_FLOAT)) {
    XMLRPC_SetValueDouble(xCurrent, atof(el->text.str));
   }
   else if (!strcmp(type, TOKEN_NULL)) {

   }
   else if (!strcmp(type, TOKEN_DATETIME)) {
    XMLRPC_SetValueDateTime_ISO8601(xCurrent, el->text.str);
   }
   else if (!strcmp(type, TOKEN_BASE64)) {
    struct buffer_st buf;
    base64_decode_xmlrpc(&buf, el->text.str, el->text.len);
    XMLRPC_SetValueBase64(xCurrent, buf.data, buf.offset);
    buffer_delete(&buf);
   }
  }

  else {
   struct array_info* ai = ((void*)0);
   xml_element* iter = (xml_element*)Q_Head(&el->children);

   if (!type || !strcmp(type, TOKEN_STRUCT)) {
    XMLRPC_SetIsVector(xCurrent, xmlrpc_vector_struct);
   }
   else if (!strcmp(type, TOKEN_ARRAY) || arrayType != ((void*)0)) {


    ai = parse_array_type_info(arrayType);
    XMLRPC_SetIsVector(xCurrent, xmlrpc_vector_array);
   }
   else {

    XMLRPC_SetIsVector(xCurrent, xmlrpc_vector_mixed);
   }


   while ( iter && !XMLRPC_RequestGetError(request) ) {
    XMLRPC_VALUE xNext = ((void*)0);


    if ( depth <= 2 ||
       (rtype == xmlrpc_request_response && depth <= 3) ) {
     xml_element_to_SOAP_REQUEST_worker(request, ((void*)0), ai, xCurrent, iter, depth);
    }


    else {
     xNext = XMLRPC_CreateValueEmpty();
     xml_element_to_SOAP_REQUEST_worker(request, xCurrent, ai, xNext, iter, depth);
     XMLRPC_AddValueToVector(xCurrent, xNext);
    }
    iter = (xml_element*)Q_Next(&el->children);
   }

   if (ai) {
    efree(ai);
   }
  }
 }
 return xCurrent;
}
