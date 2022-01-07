
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int range; } ;
typedef int RANGE ;
typedef TYPE_1__ ITERATOR ;


 int iterator_empty (TYPE_1__*) ;

__attribute__((used)) static inline void iterator_rangeitems(ITERATOR* i, RANGE range)
{
    iterator_empty(i);
    i->range = range;
}
