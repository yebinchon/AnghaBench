
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int zval ;
typedef scalar_t__ XMLRPC_REQUEST ;
struct TYPE_6__ {int encoding; } ;
struct TYPE_5__ {int member_0; } ;
struct TYPE_7__ {TYPE_2__ xml_elem_opts; TYPE_1__ member_0; } ;
typedef TYPE_3__ STRUCT_XMLRPC_REQUEST_INPUT_OPTIONS ;


 int ENCODING_DEFAULT ;
 scalar_t__ XMLRPC_REQUEST_FromXML (char*,int,TYPE_3__*) ;
 int XMLRPC_RequestFree (scalar_t__,int) ;
 int XMLRPC_RequestGetData (scalar_t__) ;
 char* XMLRPC_RequestGetMethodName (scalar_t__) ;
 scalar_t__ XMLRPC_RequestGetRequestType (scalar_t__) ;
 int XMLRPC_to_PHP (int ,int *) ;
 int ZEND_TRY_ASSIGN_REF_STRING (int *,char const*) ;
 int ZVAL_NULL (int *) ;
 int utf8_get_encoding_id_from_string (char*) ;
 scalar_t__ xmlrpc_request_call ;

void decode_request_worker(char *xml_in, int xml_in_len, char *encoding_in, zval* method_name_out, zval *retval)
{
 XMLRPC_REQUEST response;
 STRUCT_XMLRPC_REQUEST_INPUT_OPTIONS opts = {{0}};
 const char *method_name;
 opts.xml_elem_opts.encoding = encoding_in ? utf8_get_encoding_id_from_string(encoding_in) : ENCODING_DEFAULT;


 response = XMLRPC_REQUEST_FromXML(xml_in, xml_in_len, &opts);
 if (response) {
  ZVAL_NULL(retval);

  XMLRPC_to_PHP(XMLRPC_RequestGetData(response), retval);

  if (XMLRPC_RequestGetRequestType(response) == xmlrpc_request_call) {
   if (method_name_out) {
    method_name = XMLRPC_RequestGetMethodName(response);
    if (method_name) {
     ZEND_TRY_ASSIGN_REF_STRING(method_name_out, method_name);
    } else {
     ZVAL_NULL(retval);
    }
   }
  }


  XMLRPC_RequestFree(response, 1);
 }
}
