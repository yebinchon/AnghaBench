
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct entry {int dummy; } ;


 struct entry* dents ;

__attribute__((used)) static inline void swap_ent(int id1, int id2)
{
 struct entry _dent, *pdent1 = &dents[id1], *pdent2 = &dents[id2];

 *(&_dent) = *pdent1;
 *pdent1 = *pdent2;
 *pdent2 = *(&_dent);
}
