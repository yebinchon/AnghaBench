
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32 ;
typedef int inet ;


 int Min (scalar_t__,scalar_t__) ;
 int bitncmp (int ,int ,int ) ;
 int ip_addr (int *) ;
 scalar_t__ ip_bits (int *) ;
 int ip_family (int *) ;
 int ip_maxbits (int *) ;

__attribute__((used)) static int32
network_cmp_internal(inet *a1, inet *a2)
{
 if (ip_family(a1) == ip_family(a2))
 {
  int order;

  order = bitncmp(ip_addr(a1), ip_addr(a2),
      Min(ip_bits(a1), ip_bits(a2)));
  if (order != 0)
   return order;
  order = ((int) ip_bits(a1)) - ((int) ip_bits(a2));
  if (order != 0)
   return order;
  return bitncmp(ip_addr(a1), ip_addr(a2), ip_maxbits(a1));
 }

 return ip_family(a1) - ip_family(a2);
}
