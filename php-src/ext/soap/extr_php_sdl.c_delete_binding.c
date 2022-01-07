
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int zval ;
typedef TYPE_1__* sdlSoapBindingPtr ;
typedef TYPE_1__* sdlBindingPtr ;
struct TYPE_5__ {scalar_t__ bindingType; struct TYPE_5__* bindingAttributes; struct TYPE_5__* name; struct TYPE_5__* location; } ;


 scalar_t__ BINDING_SOAP ;
 TYPE_1__* Z_PTR_P (int *) ;
 int efree (TYPE_1__*) ;

__attribute__((used)) static void delete_binding(zval *zv)
{
 sdlBindingPtr binding = Z_PTR_P(zv);

 if (binding->location) {
  efree(binding->location);
 }
 if (binding->name) {
  efree(binding->name);
 }

 if (binding->bindingType == BINDING_SOAP) {
  sdlSoapBindingPtr soapBind = binding->bindingAttributes;
  if (soapBind) {
   efree(soapBind);
  }
 }
 efree(binding);
}
