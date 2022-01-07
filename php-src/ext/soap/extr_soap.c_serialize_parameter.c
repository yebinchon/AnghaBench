
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int zval ;
typedef int xmlNodePtr ;
typedef TYPE_1__* sdlParamPtr ;
typedef int paramNameBuf ;
struct TYPE_4__ {char* paramName; } ;


 scalar_t__ IS_OBJECT ;
 scalar_t__ IS_STRING ;
 scalar_t__ Z_OBJCE_P (int *) ;
 int Z_OBJPROP_P (int *) ;
 char* Z_STRVAL_P (int *) ;
 scalar_t__ Z_TYPE_P (int *) ;
 int serialize_zval (int *,TYPE_1__*,char*,int,int ) ;
 int snprintf (char*,int,char*,int) ;
 scalar_t__ soap_param_class_entry ;
 int * zend_hash_str_find (int ,char*,int) ;

__attribute__((used)) static xmlNodePtr serialize_parameter(sdlParamPtr param, zval *param_val, int index, char *name, int style, xmlNodePtr parent)
{
 char *paramName;
 xmlNodePtr xmlParam;
 char paramNameBuf[10];

 if (param_val &&
     Z_TYPE_P(param_val) == IS_OBJECT &&
     Z_OBJCE_P(param_val) == soap_param_class_entry) {
  zval *param_name;
  zval *param_data;

  if ((param_name = zend_hash_str_find(Z_OBJPROP_P(param_val), "param_name", sizeof("param_name")-1)) != ((void*)0) &&
      Z_TYPE_P(param_name) == IS_STRING &&
      (param_data = zend_hash_str_find(Z_OBJPROP_P(param_val), "param_data", sizeof("param_data")-1)) != ((void*)0)) {
   param_val = param_data;
   name = Z_STRVAL_P(param_name);
  }
 }

 if (param != ((void*)0) && param->paramName != ((void*)0)) {
  paramName = param->paramName;
 } else {
  if (name == ((void*)0)) {
   paramName = paramNameBuf;
   snprintf(paramName, sizeof(paramNameBuf), "param%d",index);
  } else {
   paramName = name;
  }
 }

 xmlParam = serialize_zval(param_val, param, paramName, style, parent);

 return xmlParam;
}
