
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int isdigit (int) ;

__attribute__((used)) static int
compare_right(char const **a, char const *aend, char const **b, char const *bend)
{
 int bias = 0;





 for(;; (*a)++, (*b)++) {
  if ((*a == aend || !isdigit((int)(unsigned char)**a)) &&
   (*b == bend || !isdigit((int)(unsigned char)**b)))
   return bias;
  else if (*a == aend || !isdigit((int)(unsigned char)**a))
   return -1;
  else if (*b == bend || !isdigit((int)(unsigned char)**b))
   return +1;
  else if (**a < **b) {
   if (!bias)
    bias = -1;
  } else if (**a > **b) {
   if (!bias)
    bias = +1;
  }
     }

     return 0;
}
