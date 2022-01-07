
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int XLogRecPtr ;
typedef int TransactionId ;
struct TYPE_3__ {int out; } ;
typedef TYPE_1__ LogicalDecodingContext ;


 int InvalidXLogRecPtr ;
 int pq_sendbyte (int ,char) ;
 int pq_sendint64 (int ,int ) ;
 int resetStringInfo (int ) ;

__attribute__((used)) static void
WalSndPrepareWrite(LogicalDecodingContext *ctx, XLogRecPtr lsn, TransactionId xid, bool last_write)
{

 if (!last_write)
  lsn = InvalidXLogRecPtr;

 resetStringInfo(ctx->out);

 pq_sendbyte(ctx->out, 'w');
 pq_sendint64(ctx->out, lsn);
 pq_sendint64(ctx->out, lsn);





 pq_sendint64(ctx->out, 0);
}
