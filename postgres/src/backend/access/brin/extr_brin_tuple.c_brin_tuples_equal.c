
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ Size ;
typedef int BrinTuple ;


 scalar_t__ memcmp (int const*,int const*,scalar_t__) ;

bool
brin_tuples_equal(const BrinTuple *a, Size alen, const BrinTuple *b, Size blen)
{
 if (alen != blen)
  return 0;
 if (memcmp(a, b, alen) != 0)
  return 0;
 return 1;
}
