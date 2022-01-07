
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ ai_grantee; scalar_t__ ai_grantor; scalar_t__ ai_privs; } ;
typedef TYPE_1__ AclItem ;



__attribute__((used)) static int
aclitemComparator(const void *arg1, const void *arg2)
{
 const AclItem *a1 = (const AclItem *) arg1;
 const AclItem *a2 = (const AclItem *) arg2;

 if (a1->ai_grantee > a2->ai_grantee)
  return 1;
 if (a1->ai_grantee < a2->ai_grantee)
  return -1;
 if (a1->ai_grantor > a2->ai_grantor)
  return 1;
 if (a1->ai_grantor < a2->ai_grantor)
  return -1;
 if (a1->ai_privs > a2->ai_privs)
  return 1;
 if (a1->ai_privs < a2->ai_privs)
  return -1;
 return 0;
}
