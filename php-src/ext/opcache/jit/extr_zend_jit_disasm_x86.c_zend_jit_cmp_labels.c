
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ h; } ;
typedef TYPE_1__ Bucket ;



__attribute__((used)) static int zend_jit_cmp_labels(Bucket *b1, Bucket *b2)
{
 return ((b1->h > b2->h) > 0) ? 1 : -1;
}
