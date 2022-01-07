
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BN_SIZE ;

__attribute__((used)) static void bn_zero(unsigned int *bn)
{
 int i;
 for (i = 0; i < BN_SIZE; i++) {
  bn[i] = 0;
 }
}
