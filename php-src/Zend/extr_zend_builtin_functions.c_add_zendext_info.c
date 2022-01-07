
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zval ;
struct TYPE_3__ {int name; } ;
typedef TYPE_1__ zend_extension ;


 int add_next_index_string (int *,int ) ;

__attribute__((used)) static int add_zendext_info(zend_extension *ext, void *arg)
{
 zval *name_array = (zval *)arg;
 add_next_index_string(name_array, ext->name);
 return 0;
}
