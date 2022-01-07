
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int inet ;


 int Min (int ,int ) ;
 int bitncmp (int ,int ,int ) ;
 int inet_masklen_inclusion_cmp (int *,int *,int) ;
 int ip_addr (int *) ;
 int ip_bits (int *) ;
 int ip_family (int *) ;

__attribute__((used)) static int
inet_inclusion_cmp(inet *left, inet *right, int opr_codenum)
{
 if (ip_family(left) == ip_family(right))
 {
  int order;

  order = bitncmp(ip_addr(left), ip_addr(right),
      Min(ip_bits(left), ip_bits(right)));
  if (order != 0)
   return order;

  return inet_masklen_inclusion_cmp(left, right, opr_codenum);
 }

 return ip_family(left) - ip_family(right);
}
