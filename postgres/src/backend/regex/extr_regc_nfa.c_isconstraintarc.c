
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arc {int type; } ;






__attribute__((used)) static inline int
isconstraintarc(struct arc *a)
{
 switch (a->type)
 {
  case '^':
  case '$':
  case 129:
  case 130:
  case 128:
   return 1;
 }
 return 0;
}
