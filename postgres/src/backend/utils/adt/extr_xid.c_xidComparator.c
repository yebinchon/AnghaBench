
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ TransactionId ;



int
xidComparator(const void *arg1, const void *arg2)
{
 TransactionId xid1 = *(const TransactionId *) arg1;
 TransactionId xid2 = *(const TransactionId *) arg2;

 if (xid1 > xid2)
  return 1;
 if (xid1 < xid2)
  return -1;
 return 0;
}
