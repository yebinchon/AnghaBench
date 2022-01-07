
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int age; } ;


 int INT_MAX ;
 TYPE_1__** NUMCache ;
 int NUMCounter ;
 int n_NUMCache ;

__attribute__((used)) static inline void
NUM_prevent_counter_overflow(void)
{
 if (NUMCounter >= (INT_MAX - 1))
 {
  for (int i = 0; i < n_NUMCache; i++)
   NUMCache[i]->age >>= 1;
  NUMCounter >>= 1;
 }
}
