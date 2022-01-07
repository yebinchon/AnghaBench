
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int zval ;
typedef double zend_long ;
typedef TYPE_2__* xmlNodePtr ;
typedef int encodeTypePtr ;
struct TYPE_6__ {TYPE_1__* children; } ;
struct TYPE_5__ {scalar_t__ type; scalar_t__ content; int * next; } ;


 int E_ERROR ;
 int FIND_XML_NULL (TYPE_2__*,int *) ;


 scalar_t__ XML_TEXT_NODE ;
 int ZVAL_DOUBLE (int *,double) ;
 int ZVAL_NULL (int *) ;
 int is_numeric_string (char*,int ,double*,double*,int ) ;
 double php_get_inf () ;
 double php_get_nan () ;
 int soap_error0 (int ,char*) ;
 int strlen (char*) ;
 int strncasecmp (char*,char*,int) ;
 int whiteSpace_collapse (scalar_t__) ;

__attribute__((used)) static zval *to_zval_double(zval *ret, encodeTypePtr type, xmlNodePtr data)
{
 ZVAL_NULL(ret);
 FIND_XML_NULL(data, ret);

 if (data && data->children) {
  if (data->children->type == XML_TEXT_NODE && data->children->next == ((void*)0)) {
   zend_long lval;
   double dval;

   whiteSpace_collapse(data->children->content);
   switch (is_numeric_string((char*)data->children->content, strlen((char*)data->children->content), &lval, &dval, 0)) {
    case 128:
     ZVAL_DOUBLE(ret, lval);
     break;
    case 129:
     ZVAL_DOUBLE(ret, dval);
     break;
    default:
     if (strncasecmp((char*)data->children->content, "NaN", sizeof("NaN")-1) == 0) {
      ZVAL_DOUBLE(ret, php_get_nan());
     } else if (strncasecmp((char*)data->children->content, "INF", sizeof("INF")-1) == 0) {
      ZVAL_DOUBLE(ret, php_get_inf());
     } else if (strncasecmp((char*)data->children->content, "-INF", sizeof("-INF")-1) == 0) {
      ZVAL_DOUBLE(ret, -php_get_inf());
     } else {
      soap_error0(E_ERROR, "Encoding: Violation of encoding rules");
     }
   }
  } else {
   soap_error0(E_ERROR, "Encoding: Violation of encoding rules");
  }
 } else {
  ZVAL_NULL(ret);
 }
 return ret;
}
