
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zval ;
typedef int zend_object_iterator ;
struct TYPE_2__ {int current; } ;
typedef TYPE_1__ spl_filesystem_iterator ;



__attribute__((used)) static zval *spl_filesystem_dir_it_current_data(zend_object_iterator *iter)
{
 spl_filesystem_iterator *iterator = (spl_filesystem_iterator *)iter;

 return &iterator->current;
}
