
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int age; } ;


 TYPE_1__** DCHCache ;
 int DCHCounter ;
 int INT_MAX ;
 int n_DCHCache ;

__attribute__((used)) static inline void
DCH_prevent_counter_overflow(void)
{
 if (DCHCounter >= (INT_MAX - 1))
 {
  for (int i = 0; i < n_DCHCache; i++)
   DCHCache[i]->age >>= 1;
  DCHCounter >>= 1;
 }
}
