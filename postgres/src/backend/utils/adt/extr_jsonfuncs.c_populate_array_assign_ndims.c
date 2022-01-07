
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ndims; int* dims; int sizes; } ;
typedef TYPE_1__ PopulateArrayContext ;


 int Assert (int) ;
 int* palloc (int) ;
 int palloc0 (int) ;
 int populate_array_report_expected_array (TYPE_1__*,int) ;

__attribute__((used)) static void
populate_array_assign_ndims(PopulateArrayContext *ctx, int ndims)
{
 int i;

 Assert(ctx->ndims <= 0);

 if (ndims <= 0)
  populate_array_report_expected_array(ctx, ndims);

 ctx->ndims = ndims;
 ctx->dims = palloc(sizeof(int) * ndims);
 ctx->sizes = palloc0(sizeof(int) * ndims);

 for (i = 0; i < ndims; i++)
  ctx->dims[i] = -1;
}
