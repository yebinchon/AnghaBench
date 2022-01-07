
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int lower; int upper; } ;
struct TYPE_6__ {int nItem; int nSpecial; TYPE_1__ range; } ;
typedef TYPE_2__ ITERATOR ;


 int ZeroMemory (TYPE_2__*,int) ;

__attribute__((used)) static inline void iterator_empty(ITERATOR* i)
{
    ZeroMemory(i, sizeof(*i));
    i->nItem = i->nSpecial = i->range.lower = i->range.upper = -1;
}
