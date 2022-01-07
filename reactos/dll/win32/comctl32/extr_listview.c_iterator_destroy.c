
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ranges; } ;
typedef TYPE_1__ ITERATOR ;


 int ranges_destroy (int ) ;

__attribute__((used)) static inline void iterator_destroy(const ITERATOR *i)
{
    ranges_destroy(i->ranges);
}
