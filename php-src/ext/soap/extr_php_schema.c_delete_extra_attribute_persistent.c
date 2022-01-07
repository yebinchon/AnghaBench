
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int zval ;
typedef TYPE_1__* sdlExtraAttributePtr ;
struct TYPE_4__ {struct TYPE_4__* val; struct TYPE_4__* ns; } ;


 TYPE_1__* Z_PTR_P (int *) ;
 int free (TYPE_1__*) ;

void delete_extra_attribute_persistent(zval *zv)
{
 sdlExtraAttributePtr attr = Z_PTR_P(zv);

 if (attr->ns) {
  free(attr->ns);
 }
 if (attr->val) {
  free(attr->val);
 }
 free(attr);
}
