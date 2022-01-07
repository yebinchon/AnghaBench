
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Bitmapset ;





 int bms_is_member (int,int const*) ;
 int bms_membership (int const*) ;

__attribute__((used)) static bool
bms_is_subset_singleton(const Bitmapset *s, int x)
{
 switch (bms_membership(s))
 {
  case 130:
   return 1;
  case 128:
   return bms_is_member(x, s);
  case 129:
   return 0;
 }

 return 0;
}
