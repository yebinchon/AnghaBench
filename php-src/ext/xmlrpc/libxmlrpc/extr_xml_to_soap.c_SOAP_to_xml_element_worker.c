
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int name; int attrs; int text; int children; } ;
typedef TYPE_1__ xml_element_attr ;
typedef TYPE_1__ xml_element ;
typedef int time_t ;
struct tm {int dummy; } ;
struct buffer_st {int offset; int data; } ;
typedef int buf ;
typedef int XMLRPC_VALUE_TYPE_EASY ;
typedef scalar_t__ XMLRPC_VALUE ;
typedef int XMLRPC_REQUEST ;


 int BUF_SIZE ;
 int Q_PushTail (int *,TYPE_1__*) ;
 char* TOKEN_ARRAY ;
 int TOKEN_ARRAY_TYPE ;
 char* TOKEN_BASE64 ;
 char* TOKEN_BOOLEAN ;
 char* TOKEN_DATETIME ;
 char* TOKEN_DOUBLE ;
 char* TOKEN_FAULT ;
 char* TOKEN_INT ;
 char* TOKEN_NULL ;
 char* TOKEN_STRING ;
 int TOKEN_TYPE ;
 int XMLRPC_CleanupValue (scalar_t__) ;
 int XMLRPC_GetValueBase64 (scalar_t__) ;
 int XMLRPC_GetValueBoolean (scalar_t__) ;
 int XMLRPC_GetValueDateTime (scalar_t__) ;
 double XMLRPC_GetValueDouble (scalar_t__) ;
 scalar_t__ XMLRPC_GetValueID (scalar_t__) ;
 int XMLRPC_GetValueInt (scalar_t__) ;
 int XMLRPC_GetValueString (scalar_t__) ;
 int XMLRPC_GetValueStringLen (scalar_t__) ;
 int XMLRPC_GetValueTypeEasy (scalar_t__) ;
 scalar_t__ XMLRPC_VectorNext (scalar_t__) ;
 scalar_t__ XMLRPC_VectorRewind (scalar_t__) ;
 int XMLRPC_VectorSize (scalar_t__) ;
 int base64_encode_xmlrpc (struct buffer_st*,int ,int ) ;
 int buffer_delete (struct buffer_st*) ;
 int estrdup (char*) ;
 scalar_t__ gen_fault_xmlrpc (scalar_t__,TYPE_1__*) ;
 char* get_array_soap_type (scalar_t__) ;
 int get_fault_type (scalar_t__) ;
 struct tm* localtime (int *) ;
 TYPE_1__* new_attr (int ,char*) ;
 int simplestring_add (int *,char*) ;
 int simplestring_addn (int *,int ,int ) ;
 int snprintf (char*,int,char*,...) ;
 int strftime (char*,int,char*,struct tm*) ;
 TYPE_1__* xml_elem_new () ;
xml_element* SOAP_to_xml_element_worker(XMLRPC_REQUEST request, XMLRPC_VALUE node) {

 xml_element* elem_val = ((void*)0);
 if (node) {
  int bFreeNode = 0;
  char buf[128];
  XMLRPC_VALUE_TYPE_EASY type = XMLRPC_GetValueTypeEasy(node);
  char* pName = ((void*)0), *pAttrType = ((void*)0);


  elem_val = xml_elem_new();

  switch (type) {
  case 128:
  case 130:
  case 137:
   if (type == 137) {




    const char* type = get_array_soap_type(node);
    xml_element_attr* attr_array_type = ((void*)0);


    snprintf(buf, sizeof(buf), "%s[%i]", type, XMLRPC_VectorSize(node));
    attr_array_type = new_attr(TOKEN_ARRAY_TYPE, buf);

    Q_PushTail(&elem_val->attrs, attr_array_type);

    pAttrType = TOKEN_ARRAY;
   }


   else if (type == 128) {
    int fault_type = get_fault_type(node);
    if (fault_type) {
     if (fault_type == 1) {


      node = gen_fault_xmlrpc(node, elem_val);
      bFreeNode = 1;
     }
     pName = TOKEN_FAULT;
    }
   }

   {

    XMLRPC_VALUE xIter = XMLRPC_VectorRewind(node);
    while ( xIter ) {
     xml_element* next_el = SOAP_to_xml_element_worker(request, xIter);
     if (next_el) {
      Q_PushTail(&elem_val->children, next_el);
     }
     xIter = XMLRPC_VectorNext(node);
    }
   }

   break;


  case 132:
   pAttrType = TOKEN_NULL;
   break;
  case 129:
   pAttrType = TOKEN_STRING;
   simplestring_addn(&elem_val->text, XMLRPC_GetValueString(node), XMLRPC_GetValueStringLen(node));
   break;
  case 131:
   pAttrType = TOKEN_INT;
   snprintf(buf, 128, "%i", XMLRPC_GetValueInt(node));
   simplestring_add(&elem_val->text, buf);
   break;
  case 135:
   pAttrType = TOKEN_BOOLEAN;
   snprintf(buf, 128, "%i", XMLRPC_GetValueBoolean(node));
   simplestring_add(&elem_val->text, buf);
   break;
  case 133:
   pAttrType = TOKEN_DOUBLE;
   snprintf(buf, 128, "%f", XMLRPC_GetValueDouble(node));
   simplestring_add(&elem_val->text, buf);
   break;
  case 134:
   {
    time_t tt = XMLRPC_GetValueDateTime(node);
    struct tm *tm = localtime (&tt);
    pAttrType = TOKEN_DATETIME;
    if(strftime (buf, 128, "%Y-%m-%dT%H:%M:%SZ", tm)) {
     simplestring_add(&elem_val->text, buf);
    }
   }
   break;
  case 136:
   {
    struct buffer_st buf;
    pAttrType = TOKEN_BASE64;
    base64_encode_xmlrpc(&buf, XMLRPC_GetValueBase64(node), XMLRPC_GetValueStringLen(node));
    simplestring_addn(&elem_val->text, buf.data, buf.offset );
    buffer_delete(&buf);
   }
   break;
   break;
  default:
   break;
  }


  if (!pName) {

   if (pAttrType) {

    pName = (char*)XMLRPC_GetValueID(node);
    if (pName) {
     Q_PushTail(&elem_val->attrs, new_attr(TOKEN_TYPE, pAttrType));
    }


    else {
     pName = pAttrType;
    }
   }

   else {

    pName = (char*)XMLRPC_GetValueID(node);
    if (!pName) {
     pName = "item";
    }
   }
  }
  elem_val->name = estrdup(pName);


  if (bFreeNode) {
   XMLRPC_CleanupValue(node);
  }
 }
 return elem_val;
}
