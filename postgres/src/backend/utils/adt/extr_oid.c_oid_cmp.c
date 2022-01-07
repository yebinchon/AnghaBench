
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ Oid ;



int
oid_cmp(const void *p1, const void *p2)
{
 Oid v1 = *((const Oid *) p1);
 Oid v2 = *((const Oid *) p2);

 if (v1 < v2)
  return -1;
 if (v1 > v2)
  return 1;
 return 0;
}
