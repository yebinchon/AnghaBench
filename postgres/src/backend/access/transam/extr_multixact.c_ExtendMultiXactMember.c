
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;
typedef int MultiXactOffset ;


 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 int MAX_MEMBERS_IN_LAST_MEMBERS_PAGE ;
 int MULTIXACT_MEMBERS_PER_PAGE ;
 int MXOffsetToFlagsBitShift (int) ;
 int MXOffsetToFlagsOffset (int) ;
 int MXOffsetToMemberPage (int) ;
 int MaxMultiXactOffset ;
 int MultiXactMemberControlLock ;
 int ZeroMultiXactMemberPage (int,int) ;

__attribute__((used)) static void
ExtendMultiXactMember(MultiXactOffset offset, int nmembers)
{






 while (nmembers > 0)
 {
  int flagsoff;
  int flagsbit;
  uint32 difference;




  flagsoff = MXOffsetToFlagsOffset(offset);
  flagsbit = MXOffsetToFlagsBitShift(offset);
  if (flagsoff == 0 && flagsbit == 0)
  {
   int pageno;

   pageno = MXOffsetToMemberPage(offset);

   LWLockAcquire(MultiXactMemberControlLock, LW_EXCLUSIVE);


   ZeroMultiXactMemberPage(pageno, 1);

   LWLockRelease(MultiXactMemberControlLock);
  }







  if (offset + MAX_MEMBERS_IN_LAST_MEMBERS_PAGE < offset)
  {





   difference = MaxMultiXactOffset - offset + 1;
  }
  else
   difference = MULTIXACT_MEMBERS_PER_PAGE - offset % MULTIXACT_MEMBERS_PER_PAGE;





  nmembers -= difference;
  offset += difference;
 }
}
