
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_14__ {int element_type; } ;
struct TYPE_10__ {scalar_t__ len; int str; } ;
struct TYPE_11__ {int jsonb; TYPE_1__ json; } ;
struct TYPE_13__ {TYPE_2__ val; scalar_t__ is_json; } ;
struct TYPE_12__ {char const* colname; int ndims; int* dims; int* sizes; int acxt; int astate; int mcxt; TYPE_5__* aio; } ;
typedef TYPE_3__ PopulateArrayContext ;
typedef int MemoryContext ;
typedef TYPE_4__ JsValue ;
typedef int Datum ;
typedef TYPE_5__ ArrayIOData ;


 int Assert (int) ;
 int CurrentMemoryContext ;
 int initArrayResult (int ,int ,int) ;
 int makeMdArrayResult (int ,int,int*,int*,int ,int) ;
 int* palloc (int) ;
 int pfree (int*) ;
 int populate_array_dim_jsonb (TYPE_3__*,int ,int) ;
 int populate_array_json (TYPE_3__*,int ,scalar_t__) ;
 scalar_t__ strlen (int ) ;

__attribute__((used)) static Datum
populate_array(ArrayIOData *aio,
      const char *colname,
      MemoryContext mcxt,
      JsValue *jsv)
{
 PopulateArrayContext ctx;
 Datum result;
 int *lbs;
 int i;

 ctx.aio = aio;
 ctx.mcxt = mcxt;
 ctx.acxt = CurrentMemoryContext;
 ctx.astate = initArrayResult(aio->element_type, ctx.acxt, 1);
 ctx.colname = colname;
 ctx.ndims = 0;
 ctx.dims = ((void*)0);
 ctx.sizes = ((void*)0);

 if (jsv->is_json)
  populate_array_json(&ctx, jsv->val.json.str,
       jsv->val.json.len >= 0 ? jsv->val.json.len
       : strlen(jsv->val.json.str));
 else
 {
  populate_array_dim_jsonb(&ctx, jsv->val.jsonb, 1);
  ctx.dims[0] = ctx.sizes[0];
 }

 Assert(ctx.ndims > 0);

 lbs = palloc(sizeof(int) * ctx.ndims);

 for (i = 0; i < ctx.ndims; i++)
  lbs[i] = 1;

 result = makeMdArrayResult(ctx.astate, ctx.ndims, ctx.dims, lbs,
          ctx.acxt, 1);

 pfree(ctx.dims);
 pfree(ctx.sizes);
 pfree(lbs);

 return result;
}
