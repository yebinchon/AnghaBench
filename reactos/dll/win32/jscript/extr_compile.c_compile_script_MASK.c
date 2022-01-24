#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  script_ctx_t ;
struct TYPE_11__ {TYPE_2__* code; TYPE_4__* parser; int /*<<< orphan*/  heap; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ compiler_ctx_t ;
struct TYPE_12__ {int /*<<< orphan*/  global_code; int /*<<< orphan*/  source; } ;
typedef  TYPE_2__ bytecode_t ;
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_13__ {int /*<<< orphan*/  source; } ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,scalar_t__,TYPE_4__**) ; 

HRESULT FUNC11(script_ctx_t *ctx, const WCHAR *code, const WCHAR *args, const WCHAR *delimiter,
        BOOL from_eval, BOOL use_decode, bytecode_t **ret)
{
    compiler_ctx_t compiler = {0};
    HRESULT hres;

    hres = FUNC7(&compiler, code);
    if(FUNC0(hres))
        return hres;

    if(args) {
        hres = FUNC2(&compiler, args);
        if(FUNC0(hres))
            return hres;
    }

    if(use_decode) {
        hres = FUNC4(compiler.code->source);
        if(FUNC0(hres)) {
            FUNC1("Decoding failed\n");
            return hres;
        }
    }

    hres = FUNC10(ctx, &compiler, compiler.code->source, delimiter, from_eval, &compiler.parser);
    if(FUNC0(hres)) {
        FUNC9(compiler.code);
        return hres;
    }

    FUNC6(&compiler.heap);
    hres = FUNC3(&compiler, compiler.parser->source, NULL, from_eval, &compiler.code->global_code);
    FUNC5(&compiler.heap);
    FUNC8(compiler.parser);
    if(FUNC0(hres)) {
        FUNC9(compiler.code);
        return hres;
    }

    *ret = compiler.code;
    return S_OK;
}