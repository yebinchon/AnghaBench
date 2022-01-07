
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* sectors; } ;


 TYPE_1__* sectors ;

__attribute__((used)) static inline void sector_mark_bad(int num)
{
 sectors->sectors[num / 8] &= ~(0x80 >> (num % 8));
}
