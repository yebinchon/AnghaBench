#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  vbarray_constr; int /*<<< orphan*/  global; int /*<<< orphan*/  string_constr; int /*<<< orphan*/  regexp_constr; int /*<<< orphan*/  number_constr; int /*<<< orphan*/  uri_error_constr; int /*<<< orphan*/  type_error_constr; int /*<<< orphan*/  syntax_error_constr; int /*<<< orphan*/  regexp_error_constr; int /*<<< orphan*/  reference_error_constr; int /*<<< orphan*/  range_error_constr; int /*<<< orphan*/  eval_error_constr; int /*<<< orphan*/  error_constr; int /*<<< orphan*/  enumerator_constr; int /*<<< orphan*/  date_constr; int /*<<< orphan*/  bool_constr; int /*<<< orphan*/  array_constr; int /*<<< orphan*/  object_constr; int /*<<< orphan*/  function_constr; } ;
typedef  TYPE_1__ script_ctx_t ;
typedef  int /*<<< orphan*/  jsdisp_t ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  ArrayW ; 
 int /*<<< orphan*/  BooleanW ; 
 int /*<<< orphan*/  DateW ; 
 int /*<<< orphan*/  EnumeratorW ; 
 int /*<<< orphan*/  ErrorW ; 
 int /*<<< orphan*/  EvalErrorW ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FunctionW ; 
 int /*<<< orphan*/  NumberW ; 
 int /*<<< orphan*/  ObjectW ; 
 int /*<<< orphan*/  PROPF_WRITABLE ; 
 int /*<<< orphan*/  RangeErrorW ; 
 int /*<<< orphan*/  ReferenceErrorW ; 
 int /*<<< orphan*/  RegExpErrorW ; 
 int /*<<< orphan*/  RegExpW ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  StringW ; 
 int /*<<< orphan*/  SyntaxErrorW ; 
 int /*<<< orphan*/  TypeErrorW ; 
 int /*<<< orphan*/  URIErrorW ; 
 int /*<<< orphan*/  VBArrayW ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static HRESULT FUNC14(script_ctx_t *ctx, jsdisp_t *object_prototype)
{
    HRESULT hres;

    hres = FUNC11(ctx, object_prototype);
    if(FUNC0(hres))
        return hres;

    hres = FUNC12(ctx->global, FunctionW, PROPF_WRITABLE,
                                       FUNC13(ctx->function_constr));
    if(FUNC0(hres))
        return hres;

    hres = FUNC6(ctx, object_prototype, &ctx->object_constr);
    if(FUNC0(hres))
        return hres;

    hres = FUNC12(ctx->global, ObjectW, PROPF_WRITABLE,
                                       FUNC13(ctx->object_constr));
    if(FUNC0(hres))
        return hres;

    hres = FUNC1(ctx, object_prototype, &ctx->array_constr);
    if(FUNC0(hres))
        return hres;

    hres = FUNC12(ctx->global, ArrayW, PROPF_WRITABLE,
                                       FUNC13(ctx->array_constr));
    if(FUNC0(hres))
        return hres;

    hres = FUNC2(ctx, object_prototype, &ctx->bool_constr);
    if(FUNC0(hres))
        return hres;

    hres = FUNC12(ctx->global, BooleanW, PROPF_WRITABLE,
                                       FUNC13(ctx->bool_constr));
    if(FUNC0(hres))
        return hres;

    hres = FUNC3(ctx, object_prototype, &ctx->date_constr);
    if(FUNC0(hres))
        return hres;

    hres = FUNC12(ctx->global, DateW, PROPF_WRITABLE,
                                       FUNC13(ctx->date_constr));
    if(FUNC0(hres))
        return hres;

    hres = FUNC4(ctx, object_prototype, &ctx->enumerator_constr);
    if(FUNC0(hres))
        return hres;

    hres = FUNC12(ctx->global, EnumeratorW, PROPF_WRITABLE,
                                       FUNC13(ctx->enumerator_constr));
    if(FUNC0(hres))
        return hres;

    hres = FUNC10(ctx, object_prototype);
    if(FUNC0(hres))
        return hres;

    hres = FUNC12(ctx->global, ErrorW, PROPF_WRITABLE,
                                       FUNC13(ctx->error_constr));
    if(FUNC0(hres))
        return hres;

    hres = FUNC12(ctx->global, EvalErrorW, PROPF_WRITABLE,
                                       FUNC13(ctx->eval_error_constr));
    if(FUNC0(hres))
        return hres;

    hres = FUNC12(ctx->global, RangeErrorW, PROPF_WRITABLE,
                                       FUNC13(ctx->range_error_constr));
    if(FUNC0(hres))
        return hres;

    hres = FUNC12(ctx->global, ReferenceErrorW, PROPF_WRITABLE,
                                       FUNC13(ctx->reference_error_constr));
    if(FUNC0(hres))
        return hres;

    hres = FUNC12(ctx->global, RegExpErrorW, PROPF_WRITABLE,
                                       FUNC13(ctx->regexp_error_constr));
    if(FUNC0(hres))
        return hres;

    hres = FUNC12(ctx->global, SyntaxErrorW, PROPF_WRITABLE,
                                       FUNC13(ctx->syntax_error_constr));
    if(FUNC0(hres))
        return hres;

    hres = FUNC12(ctx->global, TypeErrorW, PROPF_WRITABLE,
                                       FUNC13(ctx->type_error_constr));
    if(FUNC0(hres))
        return hres;

    hres = FUNC12(ctx->global, URIErrorW, PROPF_WRITABLE,
                                       FUNC13(ctx->uri_error_constr));
    if(FUNC0(hres))
        return hres;

    hres = FUNC5(ctx, object_prototype, &ctx->number_constr);
    if(FUNC0(hres))
        return hres;

    hres = FUNC12(ctx->global, NumberW, PROPF_WRITABLE,
                                       FUNC13(ctx->number_constr));
    if(FUNC0(hres))
        return hres;

    hres = FUNC7(ctx, object_prototype, &ctx->regexp_constr);
    if(FUNC0(hres))
        return hres;

    hres = FUNC12(ctx->global, RegExpW, PROPF_WRITABLE,
                                       FUNC13(ctx->regexp_constr));
    if(FUNC0(hres))
        return hres;

    hres = FUNC8(ctx, object_prototype, &ctx->string_constr);
    if(FUNC0(hres))
        return hres;

    hres = FUNC12(ctx->global, StringW, PROPF_WRITABLE,
                                       FUNC13(ctx->string_constr));
    if(FUNC0(hres))
        return hres;

    hres = FUNC9(ctx, object_prototype, &ctx->vbarray_constr);
    if(FUNC0(hres))
        return hres;

    hres = FUNC12(ctx->global, VBArrayW, PROPF_WRITABLE,
                                       FUNC13(ctx->vbarray_constr));
    if(FUNC0(hres))
        return hres;

    return S_OK;
}