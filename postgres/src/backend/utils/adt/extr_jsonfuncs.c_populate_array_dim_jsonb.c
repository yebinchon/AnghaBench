
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_17__ {TYPE_5__* jsonb; } ;
struct TYPE_20__ {int is_json; TYPE_3__ val; } ;
struct TYPE_15__ {int * data; } ;
struct TYPE_16__ {TYPE_1__ binary; } ;
struct TYPE_19__ {scalar_t__ type; TYPE_2__ val; } ;
struct TYPE_18__ {int ndims; scalar_t__ dims; } ;
typedef TYPE_4__ PopulateArrayContext ;
typedef TYPE_5__ JsonbValue ;
typedef scalar_t__ JsonbIteratorToken ;
typedef int JsonbIterator ;
typedef int JsonbContainer ;
typedef TYPE_6__ JsValue ;


 int Assert (int) ;
 int JsonContainerIsArray (int *) ;
 int JsonContainerIsScalar (int *) ;
 int * JsonbIteratorInit (int *) ;
 scalar_t__ JsonbIteratorNext (int **,TYPE_5__*,int) ;
 scalar_t__ WJB_BEGIN_ARRAY ;
 scalar_t__ WJB_DONE ;
 scalar_t__ WJB_ELEM ;
 scalar_t__ WJB_END_ARRAY ;
 int check_stack_depth () ;
 scalar_t__ jbvBinary ;
 int populate_array_assign_ndims (TYPE_4__*,int) ;
 int populate_array_check_dimension (TYPE_4__*,int) ;
 int populate_array_element (TYPE_4__*,int,TYPE_6__*) ;
 int populate_array_report_expected_array (TYPE_4__*,int) ;

__attribute__((used)) static void
populate_array_dim_jsonb(PopulateArrayContext *ctx,
       JsonbValue *jbv,
       int ndim)
{
 JsonbContainer *jbc = jbv->val.binary.data;
 JsonbIterator *it;
 JsonbIteratorToken tok;
 JsonbValue val;
 JsValue jsv;

 check_stack_depth();

 if (jbv->type != jbvBinary || !JsonContainerIsArray(jbc))
  populate_array_report_expected_array(ctx, ndim - 1);

 Assert(!JsonContainerIsScalar(jbc));

 it = JsonbIteratorInit(jbc);

 tok = JsonbIteratorNext(&it, &val, 1);
 Assert(tok == WJB_BEGIN_ARRAY);

 tok = JsonbIteratorNext(&it, &val, 1);






 if (ctx->ndims <= 0 &&
  (tok == WJB_END_ARRAY ||
   (tok == WJB_ELEM &&
    (val.type != jbvBinary ||
     !JsonContainerIsArray(val.val.binary.data)))))
  populate_array_assign_ndims(ctx, ndim);

 jsv.is_json = 0;
 jsv.val.jsonb = &val;


 while (tok == WJB_ELEM)
 {




  if (ctx->ndims > 0 && ndim >= ctx->ndims)
   populate_array_element(ctx, ndim, &jsv);
  else
  {

   populate_array_dim_jsonb(ctx, &val, ndim + 1);


   Assert(ctx->ndims > 0 && ctx->dims);

   populate_array_check_dimension(ctx, ndim);
  }

  tok = JsonbIteratorNext(&it, &val, 1);
 }

 Assert(tok == WJB_END_ARRAY);


 tok = JsonbIteratorNext(&it, &val, 1);
 Assert(tok == WJB_DONE && !it);
}
