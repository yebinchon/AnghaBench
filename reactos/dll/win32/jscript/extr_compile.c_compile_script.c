
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int script_ctx_t ;
struct TYPE_11__ {TYPE_2__* code; TYPE_4__* parser; int heap; int member_0; } ;
typedef TYPE_1__ compiler_ctx_t ;
struct TYPE_12__ {int global_code; int source; } ;
typedef TYPE_2__ bytecode_t ;
typedef int WCHAR ;
struct TYPE_13__ {int source; } ;
typedef int HRESULT ;
typedef scalar_t__ BOOL ;


 scalar_t__ FAILED (int ) ;
 int S_OK ;
 int WARN (char*) ;
 int compile_arguments (TYPE_1__*,int const*) ;
 int compile_function (TYPE_1__*,int ,int *,scalar_t__,int *) ;
 int decode_source (int ) ;
 int heap_pool_free (int *) ;
 int heap_pool_init (int *) ;
 int init_code (TYPE_1__*,int const*) ;
 int parser_release (TYPE_4__*) ;
 int release_bytecode (TYPE_2__*) ;
 int script_parse (int *,TYPE_1__*,int ,int const*,scalar_t__,TYPE_4__**) ;

HRESULT compile_script(script_ctx_t *ctx, const WCHAR *code, const WCHAR *args, const WCHAR *delimiter,
        BOOL from_eval, BOOL use_decode, bytecode_t **ret)
{
    compiler_ctx_t compiler = {0};
    HRESULT hres;

    hres = init_code(&compiler, code);
    if(FAILED(hres))
        return hres;

    if(args) {
        hres = compile_arguments(&compiler, args);
        if(FAILED(hres))
            return hres;
    }

    if(use_decode) {
        hres = decode_source(compiler.code->source);
        if(FAILED(hres)) {
            WARN("Decoding failed\n");
            return hres;
        }
    }

    hres = script_parse(ctx, &compiler, compiler.code->source, delimiter, from_eval, &compiler.parser);
    if(FAILED(hres)) {
        release_bytecode(compiler.code);
        return hres;
    }

    heap_pool_init(&compiler.heap);
    hres = compile_function(&compiler, compiler.parser->source, ((void*)0), from_eval, &compiler.code->global_code);
    heap_pool_free(&compiler.heap);
    parser_release(compiler.parser);
    if(FAILED(hres)) {
        release_bytecode(compiler.code);
        return hres;
    }

    *ret = compiler.code;
    return S_OK;
}
