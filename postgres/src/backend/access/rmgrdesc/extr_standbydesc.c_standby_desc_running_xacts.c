
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int xcnt; int* xids; scalar_t__ subxid_overflow; int oldestRunningXid; int latestCompletedXid; int nextXid; } ;
typedef TYPE_1__ xl_running_xacts ;
typedef int StringInfo ;


 int appendStringInfo (int ,char*,int,...) ;
 int appendStringInfoString (int ,char*) ;

__attribute__((used)) static void
standby_desc_running_xacts(StringInfo buf, xl_running_xacts *xlrec)
{
 int i;

 appendStringInfo(buf, "nextXid %u latestCompletedXid %u oldestRunningXid %u",
      xlrec->nextXid,
      xlrec->latestCompletedXid,
      xlrec->oldestRunningXid);
 if (xlrec->xcnt > 0)
 {
  appendStringInfo(buf, "; %d xacts:", xlrec->xcnt);
  for (i = 0; i < xlrec->xcnt; i++)
   appendStringInfo(buf, " %u", xlrec->xids[i]);
 }

 if (xlrec->subxid_overflow)
  appendStringInfoString(buf, "; subxid ovf");
}
