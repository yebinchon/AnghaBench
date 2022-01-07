
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int nmembers; int moff; int mid; } ;
typedef TYPE_1__ xl_multixact_create ;
struct TYPE_9__ {int status; } ;
typedef int MultiXactOffset ;
typedef TYPE_2__ MultiXactMember ;
typedef int MultiXactId ;


 int DEBUG2 ;
 int END_CRIT_SECTION () ;
 int ERROR ;
 int GetNewMultiXactId (int,int *) ;
 scalar_t__ ISUPDATE_from_mxstatus (int ) ;
 int InvalidMultiXactId ;
 scalar_t__ MultiXactIdIsValid (int ) ;
 int RM_MULTIXACT_ID ;
 int RecordNewMultiXact (int ,int ,int,TYPE_2__*) ;
 int SizeOfMultiXactCreate ;
 int XLOG_MULTIXACT_CREATE_ID ;
 int XLogBeginInsert () ;
 int XLogInsert (int ,int ) ;
 int XLogRegisterData (char*,int) ;
 int debug_elog2 (int ,char*) ;
 int debug_elog3 (int ,char*,int ) ;
 int elog (int ,char*) ;
 int mXactCacheGetBySet (int,TYPE_2__*) ;
 int mXactCachePut (int ,int,TYPE_2__*) ;
 int mxid_to_string (int ,int,TYPE_2__*) ;

MultiXactId
MultiXactIdCreateFromMembers(int nmembers, MultiXactMember *members)
{
 MultiXactId multi;
 MultiXactOffset offset;
 xl_multixact_create xlrec;

 debug_elog3(DEBUG2, "Create: %s",
    mxid_to_string(InvalidMultiXactId, nmembers, members));
 multi = mXactCacheGetBySet(nmembers, members);
 if (MultiXactIdIsValid(multi))
 {
  debug_elog2(DEBUG2, "Create: in cache!");
  return multi;
 }


 {
  int i;
  bool has_update = 0;

  for (i = 0; i < nmembers; i++)
  {
   if (ISUPDATE_from_mxstatus(members[i].status))
   {
    if (has_update)
     elog(ERROR, "new multixact has more than one updating member");
    has_update = 1;
   }
  }
 }
 multi = GetNewMultiXactId(nmembers, &offset);


 xlrec.mid = multi;
 xlrec.moff = offset;
 xlrec.nmembers = nmembers;







 XLogBeginInsert();
 XLogRegisterData((char *) (&xlrec), SizeOfMultiXactCreate);
 XLogRegisterData((char *) members, nmembers * sizeof(MultiXactMember));

 (void) XLogInsert(RM_MULTIXACT_ID, XLOG_MULTIXACT_CREATE_ID);


 RecordNewMultiXact(multi, offset, nmembers, members);


 END_CRIT_SECTION();


 mXactCachePut(multi, nmembers, members);

 debug_elog2(DEBUG2, "Create: all done");

 return multi;
}
