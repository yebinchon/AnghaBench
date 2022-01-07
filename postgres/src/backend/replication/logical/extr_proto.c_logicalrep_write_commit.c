
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef char uint8 ;
typedef int XLogRecPtr ;
struct TYPE_3__ {int commit_time; int end_lsn; } ;
typedef int StringInfo ;
typedef TYPE_1__ ReorderBufferTXN ;


 int pq_sendbyte (int ,char) ;
 int pq_sendint64 (int ,int ) ;

void
logicalrep_write_commit(StringInfo out, ReorderBufferTXN *txn,
      XLogRecPtr commit_lsn)
{
 uint8 flags = 0;

 pq_sendbyte(out, 'C');


 pq_sendbyte(out, flags);


 pq_sendint64(out, commit_lsn);
 pq_sendint64(out, txn->end_lsn);
 pq_sendint64(out, txn->commit_time);
}
