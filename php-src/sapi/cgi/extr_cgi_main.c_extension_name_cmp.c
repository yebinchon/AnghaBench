
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ data; } ;
typedef TYPE_1__ zend_llist_element ;
struct TYPE_6__ {int name; } ;
typedef TYPE_2__ zend_extension ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int extension_name_cmp(const zend_llist_element **f, const zend_llist_element **s)
{
 zend_extension *fe = (zend_extension*)(*f)->data;
 zend_extension *se = (zend_extension*)(*s)->data;
 return strcmp(fe->name, se->name);
}
