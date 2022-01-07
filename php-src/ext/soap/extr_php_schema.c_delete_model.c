
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int zval ;
typedef TYPE_2__* sdlContentModelPtr ;
struct TYPE_6__ {TYPE_2__* group_ref; TYPE_2__* content; } ;
struct TYPE_7__ {int kind; TYPE_1__ u; } ;
 TYPE_2__* Z_PTR_P (int *) ;
 int efree (TYPE_2__*) ;
 int zend_hash_destroy (TYPE_2__*) ;

void delete_model(zval *zv)
{
 sdlContentModelPtr tmp = Z_PTR_P(zv);
 switch (tmp->kind) {
  case 131:
  case 130:
   break;
  case 128:
  case 133:
  case 132:
   zend_hash_destroy(tmp->u.content);
   efree(tmp->u.content);
   break;
  case 129:
   efree(tmp->u.group_ref);
   break;
  default:
   break;
 }
 efree(tmp);
}
