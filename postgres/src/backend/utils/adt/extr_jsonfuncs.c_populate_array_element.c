
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int * sizes; int acxt; TYPE_1__* aio; int astate; int mcxt; } ;
struct TYPE_4__ {int element_type; int element_typmod; int element_info; } ;
typedef TYPE_2__ PopulateArrayContext ;
typedef int JsValue ;
typedef int Datum ;


 int Assert (int) ;
 int PointerGetDatum (int *) ;
 int accumArrayResult (int ,int ,int,int ,int ) ;
 int populate_record_field (int ,int ,int ,int *,int ,int ,int *,int*) ;

__attribute__((used)) static void
populate_array_element(PopulateArrayContext *ctx, int ndim, JsValue *jsv)
{
 Datum element;
 bool element_isnull;


 element = populate_record_field(ctx->aio->element_info,
         ctx->aio->element_type,
         ctx->aio->element_typmod,
         ((void*)0), ctx->mcxt, PointerGetDatum(((void*)0)),
         jsv, &element_isnull);

 accumArrayResult(ctx->astate, element, element_isnull,
      ctx->aio->element_type, ctx->acxt);

 Assert(ndim > 0);
 ctx->sizes[ndim - 1]++;
}
