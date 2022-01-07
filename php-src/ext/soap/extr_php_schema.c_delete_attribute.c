
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int zval ;
typedef TYPE_1__* sdlAttributePtr ;
struct TYPE_5__ {struct TYPE_5__* extraAttributes; struct TYPE_5__* ref; struct TYPE_5__* namens; struct TYPE_5__* name; struct TYPE_5__* fixed; struct TYPE_5__* def; } ;


 TYPE_1__* Z_PTR_P (int *) ;
 int efree (TYPE_1__*) ;
 int zend_hash_destroy (TYPE_1__*) ;

void delete_attribute(zval *zv)
{
 sdlAttributePtr attr = Z_PTR_P(zv);

 if (attr->def) {
  efree(attr->def);
 }
 if (attr->fixed) {
  efree(attr->fixed);
 }
 if (attr->name) {
  efree(attr->name);
 }
 if (attr->namens) {
  efree(attr->namens);
 }
 if (attr->ref) {
  efree(attr->ref);
 }
 if (attr->extraAttributes) {
  zend_hash_destroy(attr->extraAttributes);
  efree(attr->extraAttributes);
 }
 efree(attr);
}
