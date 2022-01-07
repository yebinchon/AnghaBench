
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int zend_ulong ;
typedef int zend_string ;
typedef TYPE_1__* sdlTypePtr ;
struct TYPE_13__ {int * attributeGroups; } ;
typedef TYPE_2__ sdlCtx ;
typedef TYPE_3__* sdlAttributePtr ;
typedef int sdlAttribute ;
struct TYPE_14__ {int * ref; int * extraAttributes; void* name; void* namens; void* fixed; void* def; } ;
struct TYPE_12__ {scalar_t__ attributes; } ;
typedef int HashTable ;


 scalar_t__ HASH_KEY_IS_STRING ;
 int copy_extra_attribute ;
 int delete_extra_attribute ;
 int efree (int *) ;
 void* emalloc (int) ;
 void* estrdup (void*) ;
 int memcpy (TYPE_3__*,TYPE_3__*,int) ;
 int schema_attribute_fixup (TYPE_2__*,TYPE_3__*) ;
 scalar_t__ schema_find_by_ref (int *,int *) ;
 int zend_hash_add_ptr (int *,int *,TYPE_3__*) ;
 int zend_hash_copy (int *,int *,int ) ;
 TYPE_3__* zend_hash_get_current_data_ptr (scalar_t__) ;
 int zend_hash_get_current_key (scalar_t__,int **,int *) ;
 scalar_t__ zend_hash_get_current_key_type (scalar_t__) ;
 int zend_hash_index_del (scalar_t__,int ) ;
 int zend_hash_init (int *,int ,int *,int ,int ) ;
 int zend_hash_internal_pointer_reset (scalar_t__) ;
 int zend_hash_move_forward (scalar_t__) ;
 int zend_hash_num_elements (int *) ;

__attribute__((used)) static void schema_attributegroup_fixup(sdlCtx *ctx, sdlAttributePtr attr, HashTable *ht)
{
 sdlTypePtr tmp;
 sdlAttributePtr tmp_attr;

 if (attr->ref != ((void*)0)) {
  if (ctx->attributeGroups != ((void*)0)) {
   tmp = (sdlTypePtr)schema_find_by_ref(ctx->attributeGroups, attr->ref);
   if (tmp) {
    if (tmp->attributes) {
     zend_hash_internal_pointer_reset(tmp->attributes);
     while ((tmp_attr = zend_hash_get_current_data_ptr(tmp->attributes)) != ((void*)0)) {
      if (zend_hash_get_current_key_type(tmp->attributes) == HASH_KEY_IS_STRING) {
       zend_string* _key;
       sdlAttributePtr newAttr;

       schema_attribute_fixup(ctx, tmp_attr);

       newAttr = emalloc(sizeof(sdlAttribute));
       memcpy(newAttr, tmp_attr, sizeof(sdlAttribute));
       if (newAttr->def) {newAttr->def = estrdup(newAttr->def);}
       if (newAttr->fixed) {newAttr->fixed = estrdup(newAttr->fixed);}
       if (newAttr->namens) {newAttr->namens = estrdup(newAttr->namens);}
       if (newAttr->name) {newAttr->name = estrdup(newAttr->name);}
       if (newAttr->extraAttributes) {
        HashTable *ht = emalloc(sizeof(HashTable));
        zend_hash_init(ht, zend_hash_num_elements(newAttr->extraAttributes), ((void*)0), delete_extra_attribute, 0);
        zend_hash_copy(ht, newAttr->extraAttributes, copy_extra_attribute);
        newAttr->extraAttributes = ht;
       }

       zend_hash_get_current_key(tmp->attributes, &_key, ((void*)0));
       zend_hash_add_ptr(ht, _key, newAttr);

       zend_hash_move_forward(tmp->attributes);
      } else {
       zend_ulong index;

       schema_attributegroup_fixup(ctx, tmp_attr, ht);
       zend_hash_get_current_key(tmp->attributes, ((void*)0), &index);
       zend_hash_index_del(tmp->attributes, index);
      }
     }
    }
   }
  }
  efree(attr->ref);
  attr->ref = ((void*)0);
 }
}
