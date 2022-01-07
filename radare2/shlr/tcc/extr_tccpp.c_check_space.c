
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ is_space (int) ;

__attribute__((used)) static inline int check_space(int t, int *spc)
{
 if (is_space (t)) {
  if (*spc) {
   return 1;
  }
  *spc = 1;
 } else {
  *spc = 0;
 }
 return 0;
}
