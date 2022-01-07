
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef TYPE_1__* sdlSoapBindingFunctionPtr ;
typedef int sdlSoapBindingFunction ;
typedef TYPE_1__* sdlFunctionPtr ;
typedef int sdlFunction ;
typedef TYPE_3__* sdlBindingPtr ;
struct TYPE_11__ {scalar_t__ bindingType; } ;
struct TYPE_10__ {scalar_t__ faults; void* responseParameters; void* requestParameters; struct TYPE_10__* bindingAttributes; int output; int input; void* soapAction; TYPE_3__* binding; void* responseName; void* requestName; void* functionName; } ;
typedef int HashTable ;


 scalar_t__ BINDING_SOAP ;
 int assert (int ) ;
 scalar_t__ make_persistent_sdl_function_faults (TYPE_1__*,scalar_t__,int *) ;
 void* make_persistent_sdl_parameters (void*,int *) ;
 int make_persistent_sdl_soap_body (int *,int *) ;
 TYPE_1__* malloc (int) ;
 int memset (TYPE_1__*,int ,int) ;
 void* strdup (void*) ;
 TYPE_3__* zend_hash_str_find_ptr (int *,char*,int) ;

__attribute__((used)) static sdlFunctionPtr make_persistent_sdl_function(sdlFunctionPtr func, HashTable *ptr_map)
{
 sdlFunctionPtr pfunc = ((void*)0);

 pfunc = malloc(sizeof(sdlFunction));
 memset(pfunc, 0, sizeof(sdlFunction));

 *pfunc = *func;

 if (pfunc->functionName) {
  pfunc->functionName = strdup(pfunc->functionName);
 }
 if (pfunc->requestName) {
  pfunc->requestName = strdup(pfunc->requestName);
 }
 if (pfunc->responseName) {
  pfunc->responseName = strdup(pfunc->responseName);
 }

 if (pfunc->binding) {
  sdlBindingPtr tmp;

  if ((tmp = zend_hash_str_find_ptr(ptr_map, (char*)&pfunc->binding, sizeof(pfunc->binding))) == ((void*)0)) {
   assert(0);
  }
  pfunc->binding = tmp;

  if (pfunc->binding->bindingType == BINDING_SOAP && pfunc->bindingAttributes) {
   sdlSoapBindingFunctionPtr soap_binding;

      soap_binding = malloc(sizeof(sdlSoapBindingFunction));
   memset(soap_binding, 0, sizeof(sdlSoapBindingFunction));
   *soap_binding = *(sdlSoapBindingFunctionPtr)pfunc->bindingAttributes;
   if (soap_binding->soapAction) {
    soap_binding->soapAction = strdup(soap_binding->soapAction);
   }
   make_persistent_sdl_soap_body(&soap_binding->input, ptr_map);
   make_persistent_sdl_soap_body(&soap_binding->output, ptr_map);
   pfunc->bindingAttributes = soap_binding;
  }

  if (pfunc->requestParameters) {
   pfunc->requestParameters = make_persistent_sdl_parameters(pfunc->requestParameters, ptr_map);
  }
  if (pfunc->responseParameters) {
   pfunc->responseParameters = make_persistent_sdl_parameters(pfunc->responseParameters, ptr_map);
  }
  if (pfunc->faults) {
   pfunc->faults = make_persistent_sdl_function_faults(pfunc, pfunc->faults, ptr_map);
  }
 }

 return pfunc;
}
