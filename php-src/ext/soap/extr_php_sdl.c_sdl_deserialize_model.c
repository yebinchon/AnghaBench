
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef void* sdlTypePtr ;
typedef TYPE_2__* sdlContentModelPtr ;
typedef int sdlContentModel ;
struct TYPE_5__ {void* group; int group_ref; void* content; void* element; } ;
struct TYPE_6__ {int kind; int min_occurs; int max_occurs; TYPE_1__ u; } ;
typedef int HashTable ;


 int WSDL_CACHE_GET_1 (int,int ,char**) ;
 int WSDL_CACHE_GET_INT (int,char**) ;






 int delete_model ;
 void* emalloc (int) ;
 int sdlContentKind ;
 int sdl_deserialize_string (char**) ;
 int zend_hash_init (void*,int,int *,int ,int ) ;
 int zend_hash_next_index_insert_ptr (void*,TYPE_2__*) ;

__attribute__((used)) static sdlContentModelPtr sdl_deserialize_model(sdlTypePtr *types, sdlTypePtr *elements, char **in)
{
 int i;
 sdlContentModelPtr model = emalloc(sizeof(sdlContentModel));

 WSDL_CACHE_GET_1(model->kind, sdlContentKind, in);
 WSDL_CACHE_GET_INT(model->min_occurs, in);
 WSDL_CACHE_GET_INT(model->max_occurs, in);
 switch (model->kind) {
  case 131:
   WSDL_CACHE_GET_INT(i, in);
   model->u.element = elements[i];
   break;
  case 128:
  case 133:
  case 132:
   WSDL_CACHE_GET_INT(i, in);
   model->u.content = emalloc(sizeof(HashTable));
   zend_hash_init(model->u.content, i, ((void*)0), delete_model, 0);
   while (i > 0) {
    sdlContentModelPtr x = sdl_deserialize_model(types, elements, in);
    zend_hash_next_index_insert_ptr(model->u.content, x);
    i--;
   }
   break;
  case 129:
   model->u.group_ref = sdl_deserialize_string(in);
   break;
  case 130:
   WSDL_CACHE_GET_INT(i, in);
   model->u.group = types[i];
   break;
  default:
   break;
 }
 return model;
}
