
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ headers; scalar_t__ ns; } ;
typedef TYPE_1__ sdlSoapBindingFunctionBody ;


 int efree (scalar_t__) ;
 int zend_hash_destroy (scalar_t__) ;

__attribute__((used)) static void delete_sdl_soap_binding_function_body(sdlSoapBindingFunctionBody body)
{
 if (body.ns) {
  efree(body.ns);
 }
 if (body.headers) {
  zend_hash_destroy(body.headers);
  efree(body.headers);
 }
}
