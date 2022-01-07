
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ enum_oid; } ;
typedef TYPE_1__ EnumItem ;



__attribute__((used)) static int
enum_oid_cmp(const void *left, const void *right)
{
 const EnumItem *l = (const EnumItem *) left;
 const EnumItem *r = (const EnumItem *) right;

 if (l->enum_oid < r->enum_oid)
  return -1;
 else if (l->enum_oid > r->enum_oid)
  return 1;
 else
  return 0;
}
