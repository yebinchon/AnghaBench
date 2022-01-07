
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int spl_filesystem_object ;
struct TYPE_4__ {int intern; void* object; } ;
typedef TYPE_1__ spl_filesystem_iterator ;


 TYPE_1__* ecalloc (int,int) ;
 int zend_iterator_init (int *) ;

__attribute__((used)) static inline spl_filesystem_iterator* spl_filesystem_object_to_iterator(spl_filesystem_object *obj)
{
 spl_filesystem_iterator *it;

 it = ecalloc(1, sizeof(spl_filesystem_iterator));
 it->object = (void *)obj;
 zend_iterator_init(&it->intern);
 return it;
}
