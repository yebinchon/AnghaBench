
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ Oid ;
typedef int ListCell ;


 scalar_t__ lfirst_oid (int const*) ;

int
list_oid_cmp(const ListCell *p1, const ListCell *p2)
{
 Oid v1 = lfirst_oid(p1);
 Oid v2 = lfirst_oid(p2);

 if (v1 < v2)
  return -1;
 if (v1 > v2)
  return 1;
 return 0;
}
