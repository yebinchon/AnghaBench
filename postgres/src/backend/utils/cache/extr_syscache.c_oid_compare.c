
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ Oid ;



__attribute__((used)) static int
oid_compare(const void *a, const void *b)
{
 Oid oa = *((const Oid *) a);
 Oid ob = *((const Oid *) b);

 if (oa == ob)
  return 0;
 return (oa > ob) ? 1 : -1;
}
