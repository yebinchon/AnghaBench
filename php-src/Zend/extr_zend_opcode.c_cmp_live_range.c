
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int start; } ;
typedef TYPE_1__ zend_live_range ;



__attribute__((used)) static int cmp_live_range(const zend_live_range *a, const zend_live_range *b) {
 return a->start - b->start;
}
