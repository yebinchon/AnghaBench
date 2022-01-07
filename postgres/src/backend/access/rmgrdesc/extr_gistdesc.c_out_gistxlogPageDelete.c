
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int downlinkOffset; int deleteXid; } ;
typedef TYPE_1__ gistxlogPageDelete ;
typedef int StringInfo ;


 int EpochFromFullTransactionId (int ) ;
 int XidFromFullTransactionId (int ) ;
 int appendStringInfo (int ,char*,int ,int ,int ) ;

__attribute__((used)) static void
out_gistxlogPageDelete(StringInfo buf, gistxlogPageDelete *xlrec)
{
 appendStringInfo(buf, "deleteXid %u:%u; downlink %u",
      EpochFromFullTransactionId(xlrec->deleteXid),
      XidFromFullTransactionId(xlrec->deleteXid),
      xlrec->downlinkOffset);
}
