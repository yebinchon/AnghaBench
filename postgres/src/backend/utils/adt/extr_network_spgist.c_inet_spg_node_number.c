
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int inet ;


 int* ip_addr (int const*) ;
 int ip_bits (int const*) ;
 int ip_maxbits (int const*) ;

__attribute__((used)) static int
inet_spg_node_number(const inet *val, int commonbits)
{
 int nodeN = 0;

 if (commonbits < ip_maxbits(val) &&
  ip_addr(val)[commonbits / 8] & (1 << (7 - commonbits % 8)))
  nodeN |= 1;
 if (commonbits < ip_bits(val))
  nodeN |= 2;

 return nodeN;
}
