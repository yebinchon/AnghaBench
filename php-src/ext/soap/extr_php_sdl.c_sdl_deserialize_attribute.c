
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* sdlExtraAttributePtr ;
typedef int sdlExtraAttribute ;
typedef TYPE_2__* sdlAttributePtr ;
typedef int encodePtr ;
struct TYPE_6__ {void* extraAttributes; int encode; int use; int form; void* fixed; void* def; void* ref; void* namens; void* name; } ;
struct TYPE_5__ {void* val; void* ns; } ;
typedef int HashTable ;


 int WSDL_CACHE_GET_1 (int ,int ,char**) ;
 int WSDL_CACHE_GET_INT (int,char**) ;
 int delete_extra_attribute ;
 void* emalloc (int) ;
 int sdlForm ;
 int sdlUse ;
 int sdl_deserialize_key (void*,TYPE_1__*,char**) ;
 void* sdl_deserialize_string (char**) ;
 int zend_hash_init (void*,int,int *,int ,int ) ;

__attribute__((used)) static void sdl_deserialize_attribute(sdlAttributePtr attr, encodePtr *encoders, char **in)
{
 int i;

 attr->name = sdl_deserialize_string(in);
 attr->namens = sdl_deserialize_string(in);
 attr->ref = sdl_deserialize_string(in);
 attr->def = sdl_deserialize_string(in);
 attr->fixed = sdl_deserialize_string(in);
 WSDL_CACHE_GET_1(attr->form, sdlForm, in);
 WSDL_CACHE_GET_1(attr->use, sdlUse, in);
 WSDL_CACHE_GET_INT(i, in);
 attr->encode = encoders[i];
 WSDL_CACHE_GET_INT(i, in);
 if (i > 0) {
  attr->extraAttributes = emalloc(sizeof(HashTable));
  zend_hash_init(attr->extraAttributes, i, ((void*)0), delete_extra_attribute, 0);
  while (i > 0) {
   sdlExtraAttributePtr x = emalloc(sizeof(sdlExtraAttribute));
   sdl_deserialize_key(attr->extraAttributes, x, in);
   x->ns = sdl_deserialize_string(in);
   x->val = sdl_deserialize_string(in);
   --i;
  }
 }
}
