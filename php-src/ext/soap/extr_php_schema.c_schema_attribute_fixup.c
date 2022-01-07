
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * attributes; } ;
typedef TYPE_1__ sdlCtx ;
typedef TYPE_2__* sdlAttributePtr ;
struct TYPE_6__ {char* ref; char* name; char* namens; char* def; char* fixed; int encode; int * extraAttributes; int use; int form; } ;
typedef int HashTable ;


 int XSD_FORM_DEFAULT ;
 int XSD_USE_DEFAULT ;
 int copy_extra_attribute ;
 int delete_extra_attribute ;
 int efree (char*) ;
 int * emalloc (int) ;
 void* estrdup (char*) ;
 scalar_t__ schema_find_by_ref (int *,char*) ;
 char* strrchr (char*,char) ;
 int zend_hash_copy (int *,int *,int ) ;
 int zend_hash_init (int *,int ,int *,int ,int ) ;
 int zend_hash_num_elements (int *) ;

__attribute__((used)) static void schema_attribute_fixup(sdlCtx *ctx, sdlAttributePtr attr)
{
 sdlAttributePtr tmp;

 if (attr->ref != ((void*)0)) {
  if (ctx->attributes != ((void*)0)) {
   tmp = (sdlAttributePtr)schema_find_by_ref(ctx->attributes, attr->ref);
   if (tmp) {
    schema_attribute_fixup(ctx, tmp);
    if (tmp->name != ((void*)0) && attr->name == ((void*)0)) {
     attr->name = estrdup(tmp->name);
    }
    if (tmp->namens != ((void*)0) && attr->namens == ((void*)0)) {
     attr->namens = estrdup(tmp->namens);
    }
    if (tmp->def != ((void*)0) && attr->def == ((void*)0)) {
     attr->def = estrdup(tmp->def);
    }
    if (tmp->fixed != ((void*)0) && attr->fixed == ((void*)0)) {
     attr->fixed = estrdup(tmp->fixed);
    }
    if (attr->form == XSD_FORM_DEFAULT) {
     attr->form = tmp->form;
    }
    if (attr->use == XSD_USE_DEFAULT) {
     attr->use = tmp->use;
    }
    if (tmp->extraAttributes != ((void*)0)) {
     attr->extraAttributes = emalloc(sizeof(HashTable));
     zend_hash_init(attr->extraAttributes, zend_hash_num_elements(tmp->extraAttributes), ((void*)0), delete_extra_attribute, 0);
     zend_hash_copy(attr->extraAttributes, tmp->extraAttributes, copy_extra_attribute);
    }
    attr->encode = tmp->encode;
   }
  }
  if (attr->name == ((void*)0) && attr->ref != ((void*)0)) {
   char *name = strrchr(attr->ref, ':');
   if (name) {
    attr->name = estrdup(name+1);
   } else{
    attr->name = estrdup(attr->ref);
   }
  }
  efree(attr->ref);
  attr->ref = ((void*)0);
 }
}
