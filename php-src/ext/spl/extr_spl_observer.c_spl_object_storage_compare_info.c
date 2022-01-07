
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zval ;
struct TYPE_2__ {int inf; } ;
typedef TYPE_1__ spl_SplObjectStorageElement ;


 scalar_t__ Z_PTR_P (int *) ;
 int zend_compare (int *,int *) ;

__attribute__((used)) static int spl_object_storage_compare_info(zval *e1, zval *e2)
{
 spl_SplObjectStorageElement *s1 = (spl_SplObjectStorageElement*)Z_PTR_P(e1);
 spl_SplObjectStorageElement *s2 = (spl_SplObjectStorageElement*)Z_PTR_P(e2);

 return zend_compare(&s1->inf, &s2->inf);
}
