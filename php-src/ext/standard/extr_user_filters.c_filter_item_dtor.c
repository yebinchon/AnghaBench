
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
struct php_user_filter_data {int classname; } ;


 struct php_user_filter_data* Z_PTR_P (int *) ;
 int efree (struct php_user_filter_data*) ;
 int zend_string_release_ex (int ,int ) ;

__attribute__((used)) static void filter_item_dtor(zval *zv)
{
 struct php_user_filter_data *fdat = Z_PTR_P(zv);
 zend_string_release_ex(fdat->classname, 0);
 efree(fdat);
}
