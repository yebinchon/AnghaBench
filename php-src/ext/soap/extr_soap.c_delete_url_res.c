
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ptr; } ;
typedef TYPE_1__ zend_resource ;


 int delete_url (int ) ;

__attribute__((used)) static void delete_url_res(zend_resource *res)
{
 delete_url(res->ptr);
}
