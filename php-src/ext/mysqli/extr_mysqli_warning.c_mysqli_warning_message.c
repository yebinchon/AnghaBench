
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int zval ;
struct TYPE_5__ {scalar_t__ ptr; } ;
typedef TYPE_1__ mysqli_object ;
struct TYPE_7__ {scalar_t__ ptr; } ;
struct TYPE_6__ {int reason; } ;
typedef TYPE_2__ MYSQLI_WARNING ;
typedef TYPE_3__ MYSQLI_RESOURCE ;


 int ZVAL_COPY (int *,int *) ;

__attribute__((used)) static
zval *mysqli_warning_message(mysqli_object *obj, zval *retval)
{
 MYSQLI_WARNING *w;

 if (!obj->ptr || !((MYSQLI_RESOURCE *)(obj->ptr))->ptr) {
  return ((void*)0);
 }

 w = (MYSQLI_WARNING *)((MYSQLI_RESOURCE *)(obj->ptr))->ptr;
 ZVAL_COPY(retval, &w->reason);
 return retval;
}
