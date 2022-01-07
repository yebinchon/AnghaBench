
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_llist_element ;



__attribute__((used)) static void zend_llist_swap(zend_llist_element **p, zend_llist_element **q)
{
 zend_llist_element *t;
 t = *p;
 *p = *q;
 *q = t;
}
