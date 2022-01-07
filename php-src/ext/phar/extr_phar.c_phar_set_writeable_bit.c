
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zval ;
typedef int zend_bool ;
struct TYPE_2__ {int is_writeable; int is_data; } ;
typedef TYPE_1__ phar_archive_data ;


 int ZEND_HASH_APPLY_KEEP ;
 scalar_t__ Z_PTR_P (int *) ;

__attribute__((used)) static int phar_set_writeable_bit(zval *zv, void *argument)
{
 zend_bool keep = *(zend_bool *)argument;
 phar_archive_data *phar = (phar_archive_data *)Z_PTR_P(zv);

 if (!phar->is_data) {
  phar->is_writeable = !keep;
 }

 return ZEND_HASH_APPLY_KEEP;
}
