
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {void* val; int children; int text; int attrs; void* key; void* name; } ;
typedef TYPE_2__ xml_element_attr ;
typedef TYPE_2__ xml_element ;
struct buffer_st {int offset; int data; } ;
typedef int XMLRPC_VECTOR_TYPE ;
typedef int XMLRPC_VALUE_TYPE ;
typedef scalar_t__ XMLRPC_VALUE ;
typedef TYPE_4__* XMLRPC_REQUEST_OUTPUT_OPTIONS ;
typedef scalar_t__ XMLRPC_REQUEST ;
struct TYPE_10__ {scalar_t__ verbosity; } ;
struct TYPE_12__ {TYPE_1__ xml_elem_opts; } ;


 char* ATTR_ARRAY ;
 char* ATTR_BASE64 ;
 char* ATTR_BOOLEAN ;
 char* ATTR_DATETIME ;
 char* ATTR_DOUBLE ;
 char const* ATTR_ID ;
 char* ATTR_INT ;
 char* ATTR_MIXED ;
 char const* ATTR_SCALAR ;
 char* ATTR_STRING ;
 char* ATTR_STRUCT ;
 char const* ATTR_TYPE ;
 char const* ATTR_VECTOR ;
 int BUF_SIZE ;
 int Q_PushTail (int *,TYPE_2__*) ;
 int XMLRPC_GetValueBase64 (scalar_t__) ;
 int XMLRPC_GetValueBoolean (scalar_t__) ;
 char* XMLRPC_GetValueDateTime_ISO8601 (scalar_t__) ;
 double XMLRPC_GetValueDouble (scalar_t__) ;
 char* XMLRPC_GetValueID (scalar_t__) ;
 int XMLRPC_GetValueInt (scalar_t__) ;
 int XMLRPC_GetValueString (scalar_t__) ;
 int XMLRPC_GetValueStringLen (scalar_t__) ;
 int XMLRPC_GetValueType (scalar_t__) ;
 int XMLRPC_GetVectorType (scalar_t__) ;
 TYPE_4__* XMLRPC_RequestGetOutputOptions (scalar_t__) ;
 scalar_t__ XMLRPC_VectorNext (scalar_t__) ;
 scalar_t__ XMLRPC_VectorRewind (scalar_t__) ;
 int base64_encode_xmlrpc (struct buffer_st*,int ,int ) ;
 int buffer_delete (struct buffer_st*) ;
 TYPE_2__* emalloc (int) ;
 void* estrdup (char const*) ;
 int simplestring_add (int *,char*) ;
 int simplestring_addn (int *,int ,int ) ;
 int snprintf (char*,int,char*,double) ;
 TYPE_2__* xml_elem_new () ;
 scalar_t__ xml_elem_no_white_space ;
xml_element* DANDARPC_to_xml_element_worker(XMLRPC_REQUEST request, XMLRPC_VALUE node) {

   xml_element* root = ((void*)0);
   if(node) {
      char buf[512];
      const char* id = XMLRPC_GetValueID(node);
      XMLRPC_VALUE_TYPE type = XMLRPC_GetValueType(node);
      XMLRPC_REQUEST_OUTPUT_OPTIONS output = XMLRPC_RequestGetOutputOptions(request);
      int bNoAddType = (type == 132 && request && output && output->xml_elem_opts.verbosity == xml_elem_no_white_space);
      xml_element* elem_val = xml_elem_new();
      const char* pAttrType = ((void*)0);

      xml_element_attr* attr_type = bNoAddType ? ((void*)0) : emalloc(sizeof(xml_element_attr));

      if(attr_type) {
         attr_type->key = estrdup(ATTR_TYPE);
         attr_type->val = 0;
         Q_PushTail(&elem_val->attrs, attr_type);
      }

      elem_val->name = (type == 131) ? estrdup(ATTR_VECTOR) : estrdup(ATTR_SCALAR);

      if(id && *id) {
         xml_element_attr* attr_id = emalloc(sizeof(xml_element_attr));
         if(attr_id) {
            attr_id->key = estrdup(ATTR_ID);
            attr_id->val = estrdup(id);
            Q_PushTail(&elem_val->attrs, attr_id);
         }
      }

      switch(type) {
         case 132:
            pAttrType = ATTR_STRING;
            simplestring_addn(&elem_val->text, XMLRPC_GetValueString(node), XMLRPC_GetValueStringLen(node));
            break;
         case 133:
            pAttrType = ATTR_INT;
            snprintf(buf, 512, "%i", XMLRPC_GetValueInt(node));
            simplestring_add(&elem_val->text, buf);
            break;
         case 136:
            pAttrType = ATTR_BOOLEAN;
            snprintf(buf, 512, "%i", XMLRPC_GetValueBoolean(node));
            simplestring_add(&elem_val->text, buf);
            break;
         case 134:
            pAttrType = ATTR_DOUBLE;
            snprintf(buf, 512, "%f", XMLRPC_GetValueDouble(node));
            simplestring_add(&elem_val->text, buf);
            break;
         case 135:
            pAttrType = ATTR_DATETIME;
            simplestring_add(&elem_val->text, XMLRPC_GetValueDateTime_ISO8601(node));
            break;
         case 137:
            {
               struct buffer_st buf;
               pAttrType = ATTR_BASE64;
               base64_encode_xmlrpc(&buf, XMLRPC_GetValueBase64(node), XMLRPC_GetValueStringLen(node));
               simplestring_addn(&elem_val->text, buf.data, buf.offset );
               buffer_delete(&buf);
            }
            break;
         case 131:
            {
               XMLRPC_VECTOR_TYPE my_type = XMLRPC_GetVectorType(node);
               XMLRPC_VALUE xIter = XMLRPC_VectorRewind(node);

               switch(my_type) {
                  case 130:
                     pAttrType = ATTR_ARRAY;
                     break;
                  case 129:
                     pAttrType = ATTR_MIXED;
                     break;
                  case 128:
                     pAttrType = ATTR_STRUCT;
                     break;
                  default:
                     break;
               }


               while( xIter ) {
                  xml_element* next_el = DANDARPC_to_xml_element_worker(request, xIter);
                  if(next_el) {
                     Q_PushTail(&elem_val->children, next_el);
                  }
                  xIter = XMLRPC_VectorNext(node);
               }
            }
            break;
         default:
            break;
      }
      if(pAttrType && attr_type && !bNoAddType) {
         attr_type->val = estrdup(pAttrType);
      }
      root = elem_val;
   }
   return root;
}
