
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ xid; scalar_t__ status; } ;
typedef TYPE_1__ MultiXactMember ;



__attribute__((used)) static int
mxactMemberComparator(const void *arg1, const void *arg2)
{
 MultiXactMember member1 = *(const MultiXactMember *) arg1;
 MultiXactMember member2 = *(const MultiXactMember *) arg2;

 if (member1.xid > member2.xid)
  return 1;
 if (member1.xid < member2.xid)
  return -1;
 if (member1.status > member2.status)
  return 1;
 if (member1.status < member2.status)
  return -1;
 return 0;
}
