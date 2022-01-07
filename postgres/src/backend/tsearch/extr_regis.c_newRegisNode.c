
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next; } ;
typedef TYPE_1__ RegisNode ;


 scalar_t__ RNHDRSZ ;
 scalar_t__ palloc0 (scalar_t__) ;

__attribute__((used)) static RegisNode *
newRegisNode(RegisNode *prev, int len)
{
 RegisNode *ptr;

 ptr = (RegisNode *) palloc0(RNHDRSZ + len + 1);
 if (prev)
  prev->next = ptr;
 return ptr;
}
