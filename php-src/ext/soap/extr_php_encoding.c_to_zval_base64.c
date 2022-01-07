
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int zval ;
typedef int zend_string ;
typedef TYPE_2__* xmlNodePtr ;
typedef int encodeTypePtr ;
struct TYPE_6__ {TYPE_1__* children; } ;
struct TYPE_5__ {scalar_t__ type; scalar_t__ content; int * next; } ;


 int E_ERROR ;
 int FIND_XML_NULL (TYPE_2__*,int *) ;
 scalar_t__ XML_CDATA_SECTION_NODE ;
 scalar_t__ XML_TEXT_NODE ;
 int ZVAL_EMPTY_STRING (int *) ;
 int ZVAL_NULL (int *) ;
 int ZVAL_STR (int *,int *) ;
 int * php_base64_decode (scalar_t__,int ) ;
 int soap_error0 (int ,char*) ;
 int strlen (char*) ;
 int whiteSpace_collapse (scalar_t__) ;

__attribute__((used)) static zval *to_zval_base64(zval *ret, encodeTypePtr type, xmlNodePtr data)
{
 zend_string *str;

 ZVAL_NULL(ret);
 FIND_XML_NULL(data, ret);
 if (data && data->children) {
  if (data->children->type == XML_TEXT_NODE && data->children->next == ((void*)0)) {
   whiteSpace_collapse(data->children->content);
   str = php_base64_decode(data->children->content, strlen((char*)data->children->content));
   if (!str) {
    soap_error0(E_ERROR, "Encoding: Violation of encoding rules");
   }
   ZVAL_STR(ret, str);
  } else if (data->children->type == XML_CDATA_SECTION_NODE && data->children->next == ((void*)0)) {
   str = php_base64_decode(data->children->content, strlen((char*)data->children->content));
   if (!str) {
    soap_error0(E_ERROR, "Encoding: Violation of encoding rules");
   }
   ZVAL_STR(ret, str);
  } else {
   soap_error0(E_ERROR, "Encoding: Violation of encoding rules");
  }
 } else {
  ZVAL_EMPTY_STRING(ret);
 }
 return ret;
}
