
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BN_SIZE ;

__attribute__((used)) static void bn_lshift(unsigned int *bn, int shift, int or_val)
{
 int i;
 unsigned int v;
 for (i = 0; i < BN_SIZE; i++) {
  v = bn[i];
  bn[i] = (v << shift) | or_val;
  or_val = v >> (32 - shift);
 }
}
