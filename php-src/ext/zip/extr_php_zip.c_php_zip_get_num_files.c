
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zip_int64_t ;
typedef int zend_long ;
struct zip {int dummy; } ;


 int MIN (int ,int ) ;
 int ZEND_LONG_MAX ;
 int zip_get_num_entries (struct zip*,int ) ;

__attribute__((used)) static zend_long php_zip_get_num_files(struct zip *za)
{
 zip_int64_t num = zip_get_num_entries(za, 0);
 return MIN(num, ZEND_LONG_MAX);
}
