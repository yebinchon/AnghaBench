
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int XLogRecPtr ;
typedef int TransactionId ;
struct TYPE_3__ {int out; } ;
typedef TYPE_1__ LogicalDecodingContext ;


 int resetStringInfo (int ) ;

__attribute__((used)) static void
LogicalOutputPrepareWrite(LogicalDecodingContext *ctx, XLogRecPtr lsn, TransactionId xid,
        bool last_write)
{
 resetStringInfo(ctx->out);
}
