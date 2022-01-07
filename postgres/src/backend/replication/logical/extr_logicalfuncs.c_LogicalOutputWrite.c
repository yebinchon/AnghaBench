
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int nulls ;
typedef int XLogRecPtr ;
typedef int TransactionId ;
struct TYPE_7__ {int returned_rows; int tupdesc; int tupstore; int binary_output; } ;
struct TYPE_6__ {TYPE_1__* out; scalar_t__ output_writer_private; } ;
struct TYPE_5__ {scalar_t__ len; int data; } ;
typedef TYPE_2__ LogicalDecodingContext ;
typedef TYPE_3__ DecodingOutputState ;
typedef int Datum ;


 int Assert (int ) ;
 int ERROR ;
 int GetDatabaseEncoding () ;
 int LSNGetDatum (int ) ;
 scalar_t__ MaxAllocSize ;
 int PointerGetDatum (int ) ;
 int TransactionIdGetDatum (int ) ;
 scalar_t__ VARHDRSZ ;
 int cstring_to_text_with_len (int ,scalar_t__) ;
 int elog (int ,char*) ;
 int memset (int*,int ,int) ;
 int pg_verify_mbstr (int ,int ,scalar_t__,int) ;
 int tuplestore_putvalues (int ,int ,int *,int*) ;

__attribute__((used)) static void
LogicalOutputWrite(LogicalDecodingContext *ctx, XLogRecPtr lsn, TransactionId xid,
       bool last_write)
{
 Datum values[3];
 bool nulls[3];
 DecodingOutputState *p;


 if (ctx->out->len > MaxAllocSize - VARHDRSZ)
  elog(ERROR, "too much output for sql interface");

 p = (DecodingOutputState *) ctx->output_writer_private;

 memset(nulls, 0, sizeof(nulls));
 values[0] = LSNGetDatum(lsn);
 values[1] = TransactionIdGetDatum(xid);





 if (!p->binary_output)
  Assert(pg_verify_mbstr(GetDatabaseEncoding(),
          ctx->out->data, ctx->out->len,
          0));


 values[2] = PointerGetDatum(
        cstring_to_text_with_len(ctx->out->data, ctx->out->len));

 tuplestore_putvalues(p->tupstore, p->tupdesc, values, nulls);
 p->returned_rows++;
}
