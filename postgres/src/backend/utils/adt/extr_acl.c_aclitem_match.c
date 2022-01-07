
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ ai_grantee; scalar_t__ ai_grantor; } ;
typedef TYPE_1__ AclItem ;



__attribute__((used)) static bool
aclitem_match(const AclItem *a1, const AclItem *a2)
{
 return a1->ai_grantee == a2->ai_grantee &&
  a1->ai_grantor == a2->ai_grantor;
}
