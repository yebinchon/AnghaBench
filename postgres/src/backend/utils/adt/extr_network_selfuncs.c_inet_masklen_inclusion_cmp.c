
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int inet ;


 scalar_t__ ip_bits (int *) ;

__attribute__((used)) static int
inet_masklen_inclusion_cmp(inet *left, inet *right, int opr_codenum)
{
 int order;

 order = (int) ip_bits(left) - (int) ip_bits(right);





 if ((order > 0 && opr_codenum >= 0) ||
  (order == 0 && opr_codenum >= -1 && opr_codenum <= 1) ||
  (order < 0 && opr_codenum <= 0))
  return 0;






 return opr_codenum;
}
