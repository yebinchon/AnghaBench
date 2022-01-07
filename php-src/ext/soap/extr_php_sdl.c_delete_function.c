
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int zval ;
typedef TYPE_2__* sdlSoapBindingFunctionPtr ;
typedef TYPE_2__* sdlFunctionPtr ;
struct TYPE_8__ {int output; int input; struct TYPE_8__* soapAction; struct TYPE_8__* bindingAttributes; TYPE_1__* binding; struct TYPE_8__* faults; struct TYPE_8__* responseParameters; struct TYPE_8__* requestParameters; struct TYPE_8__* responseName; struct TYPE_8__* requestName; struct TYPE_8__* functionName; } ;
struct TYPE_7__ {scalar_t__ bindingType; } ;


 scalar_t__ BINDING_SOAP ;
 TYPE_2__* Z_PTR_P (int *) ;
 int delete_sdl_soap_binding_function_body (int ) ;
 int efree (TYPE_2__*) ;
 int zend_hash_destroy (TYPE_2__*) ;

__attribute__((used)) static void delete_function(zval *zv)
{
 sdlFunctionPtr function = Z_PTR_P(zv);

 if (function->functionName) {
  efree(function->functionName);
 }
 if (function->requestName) {
  efree(function->requestName);
 }
 if (function->responseName) {
  efree(function->responseName);
 }
 if (function->requestParameters) {
  zend_hash_destroy(function->requestParameters);
  efree(function->requestParameters);
 }
 if (function->responseParameters) {
  zend_hash_destroy(function->responseParameters);
  efree(function->responseParameters);
 }
 if (function->faults) {
  zend_hash_destroy(function->faults);
  efree(function->faults);
 }

 if (function->bindingAttributes &&
     function->binding && function->binding->bindingType == BINDING_SOAP) {
  sdlSoapBindingFunctionPtr soapFunction = function->bindingAttributes;
  if (soapFunction->soapAction) {
   efree(soapFunction->soapAction);
  }
  delete_sdl_soap_binding_function_body(soapFunction->input);
  delete_sdl_soap_binding_function_body(soapFunction->output);
  efree(soapFunction);
 }
 efree(function);
}
