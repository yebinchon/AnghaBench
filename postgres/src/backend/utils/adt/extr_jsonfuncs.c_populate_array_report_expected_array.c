
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int ndims; scalar_t__ colname; int * sizes; } ;
struct TYPE_6__ {scalar_t__ data; } ;
typedef TYPE_1__ StringInfoData ;
typedef TYPE_2__ PopulateArrayContext ;


 int Assert (int) ;
 int ERRCODE_INVALID_TEXT_REPRESENTATION ;
 int ERROR ;
 int appendStringInfo (TYPE_1__*,char*,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errhint (char*,scalar_t__,...) ;
 int errmsg (char*) ;
 int initStringInfo (TYPE_1__*) ;

__attribute__((used)) static void
populate_array_report_expected_array(PopulateArrayContext *ctx, int ndim)
{
 if (ndim <= 0)
 {
  if (ctx->colname)
   ereport(ERROR,
     (errcode(ERRCODE_INVALID_TEXT_REPRESENTATION),
      errmsg("expected JSON array"),
      errhint("See the value of key \"%s\".", ctx->colname)));
  else
   ereport(ERROR,
     (errcode(ERRCODE_INVALID_TEXT_REPRESENTATION),
      errmsg("expected JSON array")));
 }
 else
 {
  StringInfoData indices;
  int i;

  initStringInfo(&indices);

  Assert(ctx->ndims > 0 && ndim < ctx->ndims);

  for (i = 0; i < ndim; i++)
   appendStringInfo(&indices, "[%d]", ctx->sizes[i]);

  if (ctx->colname)
   ereport(ERROR,
     (errcode(ERRCODE_INVALID_TEXT_REPRESENTATION),
      errmsg("expected JSON array"),
      errhint("See the array element %s of key \"%s\".",
        indices.data, ctx->colname)));
  else
   ereport(ERROR,
     (errcode(ERRCODE_INVALID_TEXT_REPRESENTATION),
      errmsg("expected JSON array"),
      errhint("See the array element %s.",
        indices.data)));
 }
}
