
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int zval ;
typedef TYPE_2__* xmlNodePtr ;
typedef TYPE_3__* sdlSoapBindingFunctionPtr ;
typedef int * sdlPtr ;
typedef TYPE_4__* sdlFunctionPtr ;
struct TYPE_13__ {scalar_t__ functionName; int * requestParameters; int bindingAttributes; TYPE_1__* binding; } ;
struct TYPE_12__ {scalar_t__ style; } ;
struct TYPE_11__ {scalar_t__ name; int * children; } ;
struct TYPE_10__ {scalar_t__ bindingType; } ;


 scalar_t__ BINDING_SOAP ;
 scalar_t__ SOAP_DOCUMENT ;
 int ZVAL_STRING (int *,char*) ;
 TYPE_4__* get_doc_function (int *,TYPE_2__*) ;
 TYPE_4__* get_function (int *,char*) ;
 scalar_t__ zend_hash_num_elements (int *) ;

__attribute__((used)) static sdlFunctionPtr find_function(sdlPtr sdl, xmlNodePtr func, zval* function_name)
{
 sdlFunctionPtr function;

 function = get_function(sdl, (char*)func->name);
 if (function && function->binding && function->binding->bindingType == BINDING_SOAP) {
  sdlSoapBindingFunctionPtr fnb = (sdlSoapBindingFunctionPtr)function->bindingAttributes;
  if (fnb->style == SOAP_DOCUMENT) {
   if (func->children != ((void*)0) ||
       (function->requestParameters != ((void*)0) &&
        zend_hash_num_elements(function->requestParameters) > 0)) {
    function = ((void*)0);
   }
  }
 }
 if (sdl != ((void*)0) && function == ((void*)0)) {
  function = get_doc_function(sdl, func);
 }

 if (function != ((void*)0)) {
  ZVAL_STRING(function_name, (char *)function->functionName);
 } else {
  ZVAL_STRING(function_name, (char *)func->name);
 }

 return function;
}
