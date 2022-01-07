
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * policy_name; } ;
typedef TYPE_1__ RowSecurityPolicy ;
typedef int ListCell ;


 scalar_t__ lfirst (int const*) ;
 int strcmp (int *,int *) ;

__attribute__((used)) static int
row_security_policy_cmp(const ListCell *a, const ListCell *b)
{
 const RowSecurityPolicy *pa = (const RowSecurityPolicy *) lfirst(a);
 const RowSecurityPolicy *pb = (const RowSecurityPolicy *) lfirst(b);


 if (pa->policy_name == ((void*)0))
  return pb->policy_name == ((void*)0) ? 0 : 1;
 if (pb->policy_name == ((void*)0))
  return -1;

 return strcmp(pa->policy_name, pb->policy_name);
}
