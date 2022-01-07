
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* sdlSoapBindingFunctionBodyPtr ;
struct TYPE_3__ {scalar_t__ headers; scalar_t__ ns; } ;
typedef int HashTable ;


 scalar_t__ make_persistent_sdl_function_headers (scalar_t__,int *) ;
 scalar_t__ strdup (scalar_t__) ;

__attribute__((used)) static void make_persistent_sdl_soap_body(sdlSoapBindingFunctionBodyPtr body, HashTable *ptr_map)
{
 if (body->ns) {
  body->ns = strdup(body->ns);
 }

 if (body->headers) {
  body->headers = make_persistent_sdl_function_headers(body->headers, ptr_map);
 }
}
