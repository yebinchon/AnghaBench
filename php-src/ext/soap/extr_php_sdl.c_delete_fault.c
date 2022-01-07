
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int zval ;
typedef TYPE_1__* sdlSoapBindingFunctionFaultPtr ;
typedef TYPE_2__* sdlFaultPtr ;
struct TYPE_7__ {struct TYPE_7__* bindingAttributes; struct TYPE_7__* details; struct TYPE_7__* name; } ;
struct TYPE_6__ {TYPE_2__* ns; } ;


 TYPE_2__* Z_PTR_P (int *) ;
 int efree (TYPE_2__*) ;
 int zend_hash_destroy (TYPE_2__*) ;

__attribute__((used)) static void delete_fault(zval *zv)
{
 sdlFaultPtr fault = Z_PTR_P(zv);
 if (fault->name) {
  efree(fault->name);
 }
 if (fault->details) {
  zend_hash_destroy(fault->details);
  efree(fault->details);
 }
 if (fault->bindingAttributes) {
  sdlSoapBindingFunctionFaultPtr binding = (sdlSoapBindingFunctionFaultPtr)fault->bindingAttributes;

  if (binding->ns) {
   efree(binding->ns);
  }
  efree(fault->bindingAttributes);
 }
 efree(fault);
}
