
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MultiXactOffset ;


 int MULTIXACT_MEMBERS_PER_PAGE ;
 int MultiXactOffsetPrecedes (int,int) ;

__attribute__((used)) static bool
MultiXactMemberPagePrecedes(int page1, int page2)
{
 MultiXactOffset offset1;
 MultiXactOffset offset2;

 offset1 = ((MultiXactOffset) page1) * MULTIXACT_MEMBERS_PER_PAGE;
 offset2 = ((MultiXactOffset) page2) * MULTIXACT_MEMBERS_PER_PAGE;

 return MultiXactOffsetPrecedes(offset1, offset2);
}
