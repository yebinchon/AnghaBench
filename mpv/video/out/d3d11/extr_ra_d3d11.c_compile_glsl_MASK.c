#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct spirv_compiler {TYPE_1__* fns; } ;
struct ra_d3d11 {scalar_t__ fl; int /*<<< orphan*/  (* D3DCompile ) (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ;struct spirv_compiler* spirv; } ;
struct ra {int /*<<< orphan*/  log; struct ra_d3d11* priv; } ;
typedef  scalar_t__ spvc_result ;
typedef  int /*<<< orphan*/ * spvc_parsed_ir ;
typedef  int /*<<< orphan*/ * spvc_context ;
typedef  int /*<<< orphan*/ * spvc_compiler_options ;
typedef  int /*<<< orphan*/ * spvc_compiler ;
typedef  scalar_t__ int64_t ;
typedef  enum glsl_shader { ____Placeholder_glsl_shader } glsl_shader ;
struct TYPE_5__ {int len; scalar_t__ start; } ;
typedef  TYPE_2__ bstr ;
struct TYPE_4__ {int /*<<< orphan*/  (* compile_glsl ) (struct spirv_compiler*,void*,int,char const*,TYPE_2__*) ;} ;
typedef  int /*<<< orphan*/  SpvId ;
typedef  int /*<<< orphan*/  ID3DBlob ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  D3DCOMPILE_OPTIMIZATION_LEVEL3 ; 
 scalar_t__ D3D_FEATURE_LEVEL_10_1 ; 
 scalar_t__ D3D_FEATURE_LEVEL_11_0 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int GLSL_SHADER_VERTEX ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ra*,char*,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct ra*,int,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct ra*,char*,scalar_t__,scalar_t__,...) ; 
 int MSGL_DEBUG ; 
 int MSGL_ERR ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SPVC_BACKEND_HLSL ; 
 int /*<<< orphan*/  SPVC_CAPTURE_MODE_TAKE_OWNERSHIP ; 
 int /*<<< orphan*/  SPVC_COMPILER_OPTION_FLIP_VERTEX_Y ; 
 int /*<<< orphan*/  SPVC_COMPILER_OPTION_HLSL_SHADER_MODEL ; 
 scalar_t__ SPVC_SUCCESS ; 
 int /*<<< orphan*/  SPVC_TRUE ; 
 int /*<<< orphan*/  FUNC7 (struct ra*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,char const*) ; 
 scalar_t__ FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,char const**) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC22 (char const*) ; 
 int /*<<< orphan*/  FUNC23 (struct spirv_compiler*,void*,int,char const*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC24 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC25 (void*) ; 
 void* FUNC26 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC27(struct ra *ra, enum glsl_shader type,
                         const char *glsl, ID3DBlob **out)
{
    struct ra_d3d11 *p = ra->priv;
    struct spirv_compiler *spirv = p->spirv;
    void *ta_ctx = FUNC26(NULL);
    spvc_result sc_res = SPVC_SUCCESS;
    spvc_context sc_ctx = NULL;
    spvc_parsed_ir sc_ir = NULL;
    spvc_compiler sc_compiler = NULL;
    spvc_compiler_options sc_opts = NULL;
    const char *hlsl = NULL;
    ID3DBlob *errors = NULL;
    bool success = false;
    HRESULT hr;

    int sc_shader_model;
    if (p->fl >= D3D_FEATURE_LEVEL_11_0) {
        sc_shader_model = 50;
    } else if (p->fl >= D3D_FEATURE_LEVEL_10_1) {
        sc_shader_model = 41;
    } else {
        sc_shader_model = 40;
    }

    int64_t start_us = FUNC10();

    bstr spv_module;
    if (!spirv->fns->compile_glsl(spirv, ta_ctx, type, glsl, &spv_module))
        goto done;

    int64_t shaderc_us = FUNC10();

    sc_res = FUNC17(&sc_ctx);
    if (sc_res != SPVC_SUCCESS)
        goto done;

    sc_res = FUNC21(sc_ctx, (SpvId *)spv_module.start,
                                      spv_module.len / sizeof(SpvId), &sc_ir);
    if (sc_res != SPVC_SUCCESS)
        goto done;

    sc_res = FUNC18(sc_ctx, SPVC_BACKEND_HLSL, sc_ir,
                                          SPVC_CAPTURE_MODE_TAKE_OWNERSHIP,
                                          &sc_compiler);
    if (sc_res != SPVC_SUCCESS)
        goto done;

    sc_res = FUNC13(sc_compiler, &sc_opts);
    if (sc_res != SPVC_SUCCESS)
        goto done;
    sc_res = FUNC16(sc_opts,
        SPVC_COMPILER_OPTION_HLSL_SHADER_MODEL, sc_shader_model);
    if (sc_res != SPVC_SUCCESS)
        goto done;
    if (type == GLSL_SHADER_VERTEX) {
        // FLIP_VERTEX_Y is only valid for vertex shaders
        sc_res = FUNC15(sc_opts,
            SPVC_COMPILER_OPTION_FLIP_VERTEX_Y, SPVC_TRUE);
        if (sc_res != SPVC_SUCCESS)
            goto done;
    }
    sc_res = FUNC14(sc_compiler, sc_opts);
    if (sc_res != SPVC_SUCCESS)
        goto done;

    sc_res = FUNC12(sc_compiler, &hlsl);
    if (sc_res != SPVC_SUCCESS)
        goto done;

    int64_t cross_us = FUNC10();

    hr = p->D3DCompile(hlsl, FUNC22(hlsl), NULL, NULL, NULL, "main",
        FUNC7(ra, type), D3DCOMPILE_OPTIMIZATION_LEVEL3, 0, out,
        &errors);
    if (FUNC0(hr)) {
        FUNC3(ra, "D3DCompile failed: %s\n%.*s", FUNC8(hr),
               (int)FUNC2(errors),
               (char*)FUNC1(errors));
        goto done;
    }

    int64_t d3dcompile_us = FUNC10();

    FUNC5(ra, "Compiled a %s shader in %lldus\n", FUNC11(type),
               d3dcompile_us - start_us);
    FUNC5(ra, "shaderc: %lldus, SPIRV-Cross: %lldus, D3DCompile: %lldus\n",
               shaderc_us - start_us,
               cross_us - shaderc_us,
               d3dcompile_us - cross_us);

    success = true;
done:
    if (sc_res != SPVC_SUCCESS) {
        FUNC4(ra, MSGL_ERR, "SPIRV-Cross failed: %s\n",
               FUNC20(sc_ctx));
    }
    int level = success ? MSGL_DEBUG : MSGL_ERR;
    FUNC4(ra, level, "GLSL source:\n");
    FUNC9(ra->log, level, glsl);
    if (hlsl) {
        FUNC4(ra, level, "HLSL source:\n");
        FUNC9(ra->log, level, hlsl);
    }
    FUNC6(errors);
    if (sc_ctx)
        FUNC19(sc_ctx);
    FUNC25(ta_ctx);
    return success;
}