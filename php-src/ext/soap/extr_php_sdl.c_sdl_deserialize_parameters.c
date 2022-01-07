
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sdlTypePtr ;
typedef TYPE_1__* sdlParamPtr ;
typedef int sdlParam ;
typedef int encodePtr ;
struct TYPE_3__ {int order; int element; int encode; int paramName; } ;
typedef int HashTable ;


 int WSDL_CACHE_GET_INT (int,char**) ;
 int delete_parameter ;
 void* emalloc (int) ;
 int sdl_deserialize_key (int *,TYPE_1__*,char**) ;
 int sdl_deserialize_string (char**) ;
 int zend_hash_init (int *,int,int *,int ,int ) ;

__attribute__((used)) static HashTable* sdl_deserialize_parameters(encodePtr *encoders, sdlTypePtr *types, char **in)
{
 int i, n;
 HashTable *ht;

 WSDL_CACHE_GET_INT(i, in);
 if (i == 0) {return ((void*)0);}
 ht = emalloc(sizeof(HashTable));
 zend_hash_init(ht, i, ((void*)0), delete_parameter, 0);
 while (i > 0) {
  sdlParamPtr param = emalloc(sizeof(sdlParam));
  sdl_deserialize_key(ht, param, in);
  param->paramName = sdl_deserialize_string(in);
  WSDL_CACHE_GET_INT(param->order, in);
  WSDL_CACHE_GET_INT(n, in);
  param->encode = encoders[n];
  WSDL_CACHE_GET_INT(n, in);
  param->element = types[n];
  --i;
 }
 return ht;
}
