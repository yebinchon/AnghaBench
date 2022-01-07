
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int xid; } ;
typedef TYPE_1__ TwoPhaseFileHeader ;
typedef int TransactionId ;


 int Assert (int ) ;
 char* ReadTwoPhaseFile (int ,int) ;
 int TransactionIdEquals (int ,int ) ;
 int TransactionIdIsValid (int ) ;
 scalar_t__ max_prepared_xacts ;
 int pfree (char*) ;

bool
StandbyTransactionIdIsPrepared(TransactionId xid)
{
 char *buf;
 TwoPhaseFileHeader *hdr;
 bool result;

 Assert(TransactionIdIsValid(xid));

 if (max_prepared_xacts <= 0)
  return 0;


 buf = ReadTwoPhaseFile(xid, 1);
 if (buf == ((void*)0))
  return 0;


 hdr = (TwoPhaseFileHeader *) buf;
 result = TransactionIdEquals(hdr->xid, xid);
 pfree(buf);

 return result;
}
