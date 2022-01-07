
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef void* sdlTypePtr ;
typedef TYPE_1__* sdlSoapBindingFunctionHeaderPtr ;
typedef int sdlSoapBindingFunctionHeader ;
typedef TYPE_2__* sdlSoapBindingFunctionBodyPtr ;
typedef void* encodePtr ;
struct TYPE_7__ {scalar_t__ use; scalar_t__ encodingStyle; void* headers; void* ns; } ;
struct TYPE_6__ {scalar_t__ use; scalar_t__ encodingStyle; void* element; void* encode; void* ns; void* name; void* headerfaults; } ;
typedef int HashTable ;


 scalar_t__ SOAP_ENCODED ;
 void* SOAP_ENCODING_DEFAULT ;
 int WSDL_CACHE_GET_1 (scalar_t__,int ,char**) ;
 int WSDL_CACHE_GET_INT (int,char**) ;
 int delete_header ;
 void* emalloc (int) ;
 int memset (TYPE_1__*,int ,int) ;
 int sdlEncodingUse ;
 int sdlRpcEncodingStyle ;
 int sdl_deserialize_key (void*,TYPE_1__*,char**) ;
 void* sdl_deserialize_string (char**) ;
 int zend_hash_init (void*,int,int *,int ,int ) ;

__attribute__((used)) static void sdl_deserialize_soap_body(sdlSoapBindingFunctionBodyPtr body, encodePtr *encoders, sdlTypePtr *types, char **in)
{
 int i, j, n;

 WSDL_CACHE_GET_1(body->use, sdlEncodingUse, in);
 if (body->use == SOAP_ENCODED) {
  WSDL_CACHE_GET_1(body->encodingStyle, sdlRpcEncodingStyle, in);
 } else {
  body->encodingStyle = SOAP_ENCODING_DEFAULT;
 }
 body->ns = sdl_deserialize_string(in);
 WSDL_CACHE_GET_INT(i, in);
 if (i > 0) {
  body->headers = emalloc(sizeof(HashTable));
  zend_hash_init(body->headers, i, ((void*)0), delete_header, 0);
  while (i > 0) {
   sdlSoapBindingFunctionHeaderPtr tmp = emalloc(sizeof(sdlSoapBindingFunctionHeader));
   memset(tmp, 0, sizeof(sdlSoapBindingFunctionHeader));
   sdl_deserialize_key(body->headers, tmp, in);
   WSDL_CACHE_GET_1(tmp->use, sdlEncodingUse, in);
   if (tmp->use == SOAP_ENCODED) {
    WSDL_CACHE_GET_1(tmp->encodingStyle, sdlRpcEncodingStyle, in);
   } else {
    tmp->encodingStyle = SOAP_ENCODING_DEFAULT;
   }
   tmp->name = sdl_deserialize_string(in);
   tmp->ns = sdl_deserialize_string(in);
   WSDL_CACHE_GET_INT(n, in);
   tmp->encode = encoders[n];
   WSDL_CACHE_GET_INT(n, in);
   tmp->element = types[n];
   --i;
   WSDL_CACHE_GET_INT(j, in);
   if (j > 0) {
    tmp->headerfaults = emalloc(sizeof(HashTable));
    zend_hash_init(tmp->headerfaults, i, ((void*)0), delete_header, 0);
    while (j > 0) {
     sdlSoapBindingFunctionHeaderPtr tmp2 = emalloc(sizeof(sdlSoapBindingFunctionHeader));
     memset(tmp2, 0, sizeof(sdlSoapBindingFunctionHeader));
     sdl_deserialize_key(tmp->headerfaults, tmp2, in);
     WSDL_CACHE_GET_1(tmp2->use, sdlEncodingUse, in);
     if (tmp2->use == SOAP_ENCODED) {
      WSDL_CACHE_GET_1(tmp2->encodingStyle, sdlRpcEncodingStyle, in);
     } else {
      tmp2->encodingStyle = SOAP_ENCODING_DEFAULT;
     }
     tmp2->name = sdl_deserialize_string(in);
     tmp2->ns = sdl_deserialize_string(in);
     WSDL_CACHE_GET_INT(n, in);
     tmp2->encode = encoders[n];
     WSDL_CACHE_GET_INT(n, in);
     tmp2->element = types[n];
     --j;
    }
   }
  }
 }
}
