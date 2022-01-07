
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int xid; int commit_time; int final_lsn; } ;
typedef int StringInfo ;
typedef TYPE_1__ ReorderBufferTXN ;


 int pq_sendbyte (int ,char) ;
 int pq_sendint32 (int ,int ) ;
 int pq_sendint64 (int ,int ) ;

void
logicalrep_write_begin(StringInfo out, ReorderBufferTXN *txn)
{
 pq_sendbyte(out, 'B');


 pq_sendint64(out, txn->final_lsn);
 pq_sendint64(out, txn->commit_time);
 pq_sendint32(out, txn->xid);
}
