
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zval ;
struct TYPE_3__ {int path_length; int path; } ;
typedef TYPE_1__ zend_blacklist_entry ;


 int add_next_index_stringl (int *,int ,int ) ;

__attribute__((used)) static int add_blacklist_path(zend_blacklist_entry *p, zval *return_value)
{
 add_next_index_stringl(return_value, p->path, p->path_length);
 return 0;
}
