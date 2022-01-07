
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ txid ;



__attribute__((used)) static int
cmp_txid(const void *aa, const void *bb)
{
 txid a = *(const txid *) aa;
 txid b = *(const txid *) bb;

 if (a < b)
  return -1;
 if (a > b)
  return 1;
 return 0;
}
