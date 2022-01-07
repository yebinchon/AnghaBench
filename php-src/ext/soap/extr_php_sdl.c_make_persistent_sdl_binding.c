
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* sdlSoapBindingPtr ;
typedef int sdlSoapBinding ;
typedef TYPE_1__* sdlBindingPtr ;
typedef int sdlBinding ;
struct TYPE_7__ {scalar_t__ bindingType; struct TYPE_7__* bindingAttributes; void* location; void* name; } ;
typedef int HashTable ;


 scalar_t__ BINDING_SOAP ;
 TYPE_1__* malloc (int) ;
 int memset (TYPE_1__*,int ,int) ;
 void* strdup (void*) ;

__attribute__((used)) static sdlBindingPtr make_persistent_sdl_binding(sdlBindingPtr bind, HashTable *ptr_map)
{
 sdlBindingPtr pbind = ((void*)0);

 pbind = malloc(sizeof(sdlBinding));
 memset(pbind, 0, sizeof(sdlBinding));

 *pbind = *bind;

 if (pbind->name) {
  pbind->name = strdup(pbind->name);
 }
 if (pbind->location) {
  pbind->location = strdup(pbind->location);
 }

 if (pbind->bindingType == BINDING_SOAP && pbind->bindingAttributes) {
  sdlSoapBindingPtr soap_binding;

  soap_binding = malloc(sizeof(sdlSoapBinding));
  memset(soap_binding, 0, sizeof(sdlSoapBinding));
  *soap_binding = *(sdlSoapBindingPtr)pbind->bindingAttributes;
  pbind->bindingAttributes = soap_binding;
 }

 return pbind;
}
