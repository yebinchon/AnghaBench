
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zend_long ;
struct TYPE_3__ {int count; } ;
typedef TYPE_1__ spl_ptr_llist ;



__attribute__((used)) static zend_long spl_ptr_llist_count(spl_ptr_llist *llist)
{
 return (zend_long)llist->count;
}
