
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tableoid; int oid; } ;
struct TYPE_4__ {TYPE_1__ catId; } ;
typedef TYPE_2__ ExtensionMemberId ;


 int oidcmp (int ,int ) ;

__attribute__((used)) static int
ExtensionMemberIdCompare(const void *p1, const void *p2)
{
 const ExtensionMemberId *obj1 = (const ExtensionMemberId *) p1;
 const ExtensionMemberId *obj2 = (const ExtensionMemberId *) p2;
 int cmpval;





 cmpval = oidcmp(obj1->catId.oid, obj2->catId.oid);
 if (cmpval == 0)
  cmpval = oidcmp(obj1->catId.tableoid, obj2->catId.tableoid);
 return cmpval;
}
