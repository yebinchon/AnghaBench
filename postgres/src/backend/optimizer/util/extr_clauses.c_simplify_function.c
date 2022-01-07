
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int int32 ;
struct TYPE_11__ {int root; } ;
typedef TYPE_2__ eval_const_expressions_context ;
struct TYPE_14__ {int prosupport; int proretset; } ;
struct TYPE_10__ {int type; } ;
struct TYPE_13__ {int funcvariadic; int location; int * args; void* inputcollid; void* funccollid; int funcformat; int funcretset; void* funcresulttype; void* funcid; TYPE_1__ xpr; } ;
struct TYPE_12__ {TYPE_4__* fcall; int root; int type; } ;
typedef TYPE_3__ SupportRequestSimplify ;
typedef void* Oid ;
typedef int Node ;
typedef int List ;
typedef int HeapTuple ;
typedef TYPE_4__ FuncExpr ;
typedef TYPE_5__* Form_pg_proc ;
typedef int Expr ;


 int Assert (int) ;
 int COERCE_EXPLICIT_CALL ;
 scalar_t__ DatumGetPointer (int ) ;
 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 int ObjectIdGetDatum (void*) ;
 int OidFunctionCall1 (int ,int ) ;
 scalar_t__ OidIsValid (int ) ;
 int PROCOID ;
 int PointerGetDatum (TYPE_3__*) ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int T_FuncExpr ;
 int T_SupportRequestSimplify ;
 int elog (int ,char*,void*) ;
 int eval_const_expressions_mutator ;
 int * evaluate_function (void*,void*,int ,void*,void*,int *,int,int ,TYPE_2__*) ;
 int * expand_function_arguments (int *,void*,int ) ;
 scalar_t__ expression_tree_mutator (int *,int ,void*) ;
 int * inline_function (void*,void*,void*,void*,int *,int,int ,TYPE_2__*) ;

__attribute__((used)) static Expr *
simplify_function(Oid funcid, Oid result_type, int32 result_typmod,
      Oid result_collid, Oid input_collid, List **args_p,
      bool funcvariadic, bool process_args, bool allow_non_const,
      eval_const_expressions_context *context)
{
 List *args = *args_p;
 HeapTuple func_tuple;
 Form_pg_proc func_form;
 Expr *newexpr;
 func_tuple = SearchSysCache1(PROCOID, ObjectIdGetDatum(funcid));
 if (!HeapTupleIsValid(func_tuple))
  elog(ERROR, "cache lookup failed for function %u", funcid);
 func_form = (Form_pg_proc) GETSTRUCT(func_tuple);







 if (process_args)
 {
  args = expand_function_arguments(args, result_type, func_tuple);
  args = (List *) expression_tree_mutator((Node *) args,
            eval_const_expressions_mutator,
            (void *) context);

  *args_p = args;
 }



 newexpr = evaluate_function(funcid, result_type, result_typmod,
        result_collid, input_collid,
        args, funcvariadic,
        func_tuple, context);

 if (!newexpr && allow_non_const && OidIsValid(func_form->prosupport))
 {







  SupportRequestSimplify req;
  FuncExpr fexpr;

  fexpr.xpr.type = T_FuncExpr;
  fexpr.funcid = funcid;
  fexpr.funcresulttype = result_type;
  fexpr.funcretset = func_form->proretset;
  fexpr.funcvariadic = funcvariadic;
  fexpr.funcformat = COERCE_EXPLICIT_CALL;
  fexpr.funccollid = result_collid;
  fexpr.inputcollid = input_collid;
  fexpr.args = args;
  fexpr.location = -1;

  req.type = T_SupportRequestSimplify;
  req.root = context->root;
  req.fcall = &fexpr;

  newexpr = (Expr *)
   DatumGetPointer(OidFunctionCall1(func_form->prosupport,
            PointerGetDatum(&req)));


  Assert(newexpr != (Expr *) &fexpr);
 }

 if (!newexpr && allow_non_const)
  newexpr = inline_function(funcid, result_type, result_collid,
          input_collid, args, funcvariadic,
          func_tuple, context);

 ReleaseSysCache(func_tuple);

 return newexpr;
}
