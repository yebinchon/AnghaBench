
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* sizes; int* dims; } ;
typedef TYPE_1__ PopulateArrayContext ;


 int ERRCODE_INVALID_TEXT_REPRESENTATION ;
 int ERROR ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail (char*) ;
 int errmsg (char*) ;

__attribute__((used)) static void
populate_array_check_dimension(PopulateArrayContext *ctx, int ndim)
{
 int dim = ctx->sizes[ndim];

 if (ctx->dims[ndim] == -1)
  ctx->dims[ndim] = dim;
 else if (ctx->dims[ndim] != dim)
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_TEXT_REPRESENTATION),
     errmsg("malformed JSON array"),
     errdetail("Multidimensional arrays must have "
         "sub-arrays with matching dimensions.")));


 ctx->sizes[ndim] = 0;


 if (ndim > 0)
  ctx->sizes[ndim - 1]++;
}
