
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int children; void* name; int text; } ;
typedef TYPE_1__ xml_element ;
struct buffer_st {int offset; int data; } ;
typedef scalar_t__ XMLRPC_VECTOR_TYPE ;
typedef int XMLRPC_VALUE_TYPE ;
typedef int * XMLRPC_VALUE ;
typedef scalar_t__ XMLRPC_REQUEST_TYPE ;


 int BUF_SIZE ;
 scalar_t__ EG (int ) ;
 int ELEM_ARRAY ;
 int ELEM_BASE64 ;
 int ELEM_BOOLEAN ;
 int ELEM_DATA ;
 int ELEM_DATETIME ;
 int ELEM_DOUBLE ;
 int ELEM_FAULT ;
 int ELEM_FAULTCODE ;
 int ELEM_INT ;
 int ELEM_MEMBER ;
 int ELEM_NAME ;
 int ELEM_PARAM ;
 int ELEM_PARAMS ;
 int ELEM_STRING ;
 int ELEM_STRUCT ;
 int ELEM_VALUE ;
 int Q_PushTail (int *,TYPE_1__*) ;
 int XMLRPC_GetValueBase64 (int *) ;
 int XMLRPC_GetValueBoolean (int *) ;
 char* XMLRPC_GetValueDateTime_ISO8601 (int *) ;
 int XMLRPC_GetValueDouble (int *) ;
 char* XMLRPC_GetValueID (int *) ;
 int XMLRPC_GetValueInt (int *) ;
 int XMLRPC_GetValueString (int *) ;
 int XMLRPC_GetValueStringLen (int *) ;
 int XMLRPC_GetValueType (int *) ;
 scalar_t__ XMLRPC_GetVectorType (int *) ;
 scalar_t__ XMLRPC_VectorGetValueWithID (int *,int ) ;
 int * XMLRPC_VectorNext (int *) ;
 int * XMLRPC_VectorRewind (int *) ;
 int ap_php_snprintf (char*,int,char*,int,int ) ;
 int base64_encode_xmlrpc (struct buffer_st*,int ,int ) ;
 int buffer_delete (struct buffer_st*) ;
 void* estrdup (int ) ;
 int precision ;
 int simplestring_add (int *,char*) ;
 int simplestring_addn (int *,int ,int ) ;
 int snprintf (char*,int,char*,int) ;
 TYPE_1__* xml_elem_new () ;






 scalar_t__ xmlrpc_request_call ;




 scalar_t__ xmlrpc_vector_none ;


xml_element* XMLRPC_to_xml_element_worker(XMLRPC_VALUE current_vector, XMLRPC_VALUE node,
                                          XMLRPC_REQUEST_TYPE request_type, int depth) {

   xml_element* root = ((void*)0);
   if (node) {
      char buf[512];
      XMLRPC_VALUE_TYPE type = XMLRPC_GetValueType(node);
      XMLRPC_VECTOR_TYPE vtype = XMLRPC_GetVectorType(node);
      xml_element* elem_val = xml_elem_new();


      if (depth == 0 &&
          !(type == 131 &&
            vtype == 130 &&
            request_type == xmlrpc_request_call) ) {
         int bIsFault = (vtype == 128 && XMLRPC_VectorGetValueWithID(node, ELEM_FAULTCODE));

         xml_element* next_el = XMLRPC_to_xml_element_worker(((void*)0), node, request_type, depth + 1);
         if (next_el) {
            Q_PushTail(&elem_val->children, next_el);
         }
         elem_val->name = estrdup(bIsFault ? ELEM_FAULT : ELEM_PARAMS);
  }
  else {
         switch (type) {
   case 134:
         case 132:
            elem_val->name = estrdup(ELEM_STRING);
            simplestring_addn(&elem_val->text, XMLRPC_GetValueString(node), XMLRPC_GetValueStringLen(node));
            break;
         case 133:
            elem_val->name = estrdup(ELEM_INT);
            snprintf(buf, 512, "%i", XMLRPC_GetValueInt(node));
            simplestring_add(&elem_val->text, buf);
            break;
         case 137:
            elem_val->name = estrdup(ELEM_BOOLEAN);
            snprintf(buf, 512, "%i", XMLRPC_GetValueBoolean(node));
            simplestring_add(&elem_val->text, buf);
            break;
         case 135:
            {
                                elem_val->name = estrdup(ELEM_DOUBLE);
                ap_php_snprintf(buf, 512, "%.*G", (int) EG(precision), XMLRPC_GetValueDouble(node));
                simplestring_add(&elem_val->text, buf);
            }
            break;
         case 136:
            elem_val->name = estrdup(ELEM_DATETIME);
            simplestring_add(&elem_val->text, XMLRPC_GetValueDateTime_ISO8601(node));
            break;
         case 138:
            {
               struct buffer_st buf;
               elem_val->name = estrdup(ELEM_BASE64);
               base64_encode_xmlrpc(&buf, XMLRPC_GetValueBase64(node), XMLRPC_GetValueStringLen(node));
               simplestring_addn(&elem_val->text, buf.data, buf.offset );
               buffer_delete(&buf);
            }
            break;
         case 131:
            {
               XMLRPC_VECTOR_TYPE my_type = XMLRPC_GetVectorType(node);
               XMLRPC_VALUE xIter = XMLRPC_VectorRewind(node);
               xml_element* root_vector_elem = elem_val;

               switch (my_type) {
               case 130:
                  {
                      if(depth == 0) {
                         elem_val->name = estrdup(ELEM_PARAMS);
                      }
                      else {
                         xml_element* data = xml_elem_new();
                         data->name = estrdup(ELEM_DATA);

                         elem_val->name = estrdup(ELEM_ARRAY);
                         Q_PushTail(&elem_val->children, data);
                         root_vector_elem = data;
                      }
                  }
                  break;
               case 129:
               case 128:
                  elem_val->name = estrdup(ELEM_STRUCT);
                  break;
               default:
                  break;
               }


               while ( xIter ) {
                  xml_element* next_el = XMLRPC_to_xml_element_worker(node, xIter, request_type, depth + 1);
                  if (next_el) {
                     Q_PushTail(&root_vector_elem->children, next_el);
                  }
                  xIter = XMLRPC_VectorNext(node);
               }
            }
            break;
         default:
            break;
         }
      }

      {
         XMLRPC_VECTOR_TYPE vtype = XMLRPC_GetVectorType(current_vector);

         if (depth == 1) {
            xml_element* value = xml_elem_new();
            value->name = estrdup(ELEM_VALUE);


            if (XMLRPC_VectorGetValueWithID(node, ELEM_FAULTCODE)) {
               root = value;
    }
    else {
               xml_element* param = xml_elem_new();
               param->name = estrdup(ELEM_PARAM);

               Q_PushTail(&param->children, value);

               root = param;
            }
            Q_PushTail(&value->children, elem_val);
   }
   else if (vtype == 128 || vtype == 129) {
            xml_element* member = xml_elem_new();
            xml_element* name = xml_elem_new();
            xml_element* value = xml_elem_new();

            member->name = estrdup(ELEM_MEMBER);
            name->name = estrdup(ELEM_NAME);
            value->name = estrdup(ELEM_VALUE);

            simplestring_add(&name->text, XMLRPC_GetValueID(node));

            Q_PushTail(&member->children, name);
            Q_PushTail(&member->children, value);
            Q_PushTail(&value->children, elem_val);

            root = member;
   }
   else if (vtype == 130) {
            xml_element* value = xml_elem_new();

            value->name = estrdup(ELEM_VALUE);

            Q_PushTail(&value->children, elem_val);

            root = value;
   }
   else if (vtype == xmlrpc_vector_none) {

            root = elem_val;
   }
   else {
            xml_element* value = xml_elem_new();

            value->name = estrdup(ELEM_VALUE);

            Q_PushTail(&value->children, elem_val);

            root = value;
         }
      }
   }
   return root;
}
