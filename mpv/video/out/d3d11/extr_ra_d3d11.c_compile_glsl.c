
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct spirv_compiler {TYPE_1__* fns; } ;
struct ra_d3d11 {scalar_t__ fl; int (* D3DCompile ) (char const*,int ,int *,int *,int *,char*,int ,int ,int ,int **,int **) ;struct spirv_compiler* spirv; } ;
struct ra {int log; struct ra_d3d11* priv; } ;
typedef scalar_t__ spvc_result ;
typedef int * spvc_parsed_ir ;
typedef int * spvc_context ;
typedef int * spvc_compiler_options ;
typedef int * spvc_compiler ;
typedef scalar_t__ int64_t ;
typedef enum glsl_shader { ____Placeholder_glsl_shader } glsl_shader ;
struct TYPE_5__ {int len; scalar_t__ start; } ;
typedef TYPE_2__ bstr ;
struct TYPE_4__ {int (* compile_glsl ) (struct spirv_compiler*,void*,int,char const*,TYPE_2__*) ;} ;
typedef int SpvId ;
typedef int ID3DBlob ;
typedef int HRESULT ;


 int D3DCOMPILE_OPTIMIZATION_LEVEL3 ;
 scalar_t__ D3D_FEATURE_LEVEL_10_1 ;
 scalar_t__ D3D_FEATURE_LEVEL_11_0 ;
 scalar_t__ FAILED (int ) ;
 int GLSL_SHADER_VERTEX ;
 scalar_t__ ID3D10Blob_GetBufferPointer (int *) ;
 scalar_t__ ID3D10Blob_GetBufferSize (int *) ;
 int MP_ERR (struct ra*,char*,int ,int,char*) ;
 int MP_MSG (struct ra*,int,char*,...) ;
 int MP_VERBOSE (struct ra*,char*,scalar_t__,scalar_t__,...) ;
 int MSGL_DEBUG ;
 int MSGL_ERR ;
 int SAFE_RELEASE (int *) ;
 int SPVC_BACKEND_HLSL ;
 int SPVC_CAPTURE_MODE_TAKE_OWNERSHIP ;
 int SPVC_COMPILER_OPTION_FLIP_VERTEX_Y ;
 int SPVC_COMPILER_OPTION_HLSL_SHADER_MODEL ;
 scalar_t__ SPVC_SUCCESS ;
 int SPVC_TRUE ;
 int get_shader_target (struct ra*,int) ;
 int mp_HRESULT_to_str (int ) ;
 int mp_log_source (int ,int,char const*) ;
 scalar_t__ mp_time_us () ;
 int shader_type_name (int) ;
 scalar_t__ spvc_compiler_compile (int *,char const**) ;
 scalar_t__ spvc_compiler_create_compiler_options (int *,int **) ;
 scalar_t__ spvc_compiler_install_compiler_options (int *,int *) ;
 scalar_t__ spvc_compiler_options_set_bool (int *,int ,int ) ;
 scalar_t__ spvc_compiler_options_set_uint (int *,int ,int) ;
 scalar_t__ spvc_context_create (int **) ;
 scalar_t__ spvc_context_create_compiler (int *,int ,int *,int ,int **) ;
 int spvc_context_destroy (int *) ;
 int spvc_context_get_last_error_string (int *) ;
 scalar_t__ spvc_context_parse_spirv (int *,int *,int,int **) ;
 int strlen (char const*) ;
 int stub1 (struct spirv_compiler*,void*,int,char const*,TYPE_2__*) ;
 int stub2 (char const*,int ,int *,int *,int *,char*,int ,int ,int ,int **,int **) ;
 int talloc_free (void*) ;
 void* talloc_new (int *) ;

__attribute__((used)) static bool compile_glsl(struct ra *ra, enum glsl_shader type,
                         const char *glsl, ID3DBlob **out)
{
    struct ra_d3d11 *p = ra->priv;
    struct spirv_compiler *spirv = p->spirv;
    void *ta_ctx = talloc_new(((void*)0));
    spvc_result sc_res = SPVC_SUCCESS;
    spvc_context sc_ctx = ((void*)0);
    spvc_parsed_ir sc_ir = ((void*)0);
    spvc_compiler sc_compiler = ((void*)0);
    spvc_compiler_options sc_opts = ((void*)0);
    const char *hlsl = ((void*)0);
    ID3DBlob *errors = ((void*)0);
    bool success = 0;
    HRESULT hr;

    int sc_shader_model;
    if (p->fl >= D3D_FEATURE_LEVEL_11_0) {
        sc_shader_model = 50;
    } else if (p->fl >= D3D_FEATURE_LEVEL_10_1) {
        sc_shader_model = 41;
    } else {
        sc_shader_model = 40;
    }

    int64_t start_us = mp_time_us();

    bstr spv_module;
    if (!spirv->fns->compile_glsl(spirv, ta_ctx, type, glsl, &spv_module))
        goto done;

    int64_t shaderc_us = mp_time_us();

    sc_res = spvc_context_create(&sc_ctx);
    if (sc_res != SPVC_SUCCESS)
        goto done;

    sc_res = spvc_context_parse_spirv(sc_ctx, (SpvId *)spv_module.start,
                                      spv_module.len / sizeof(SpvId), &sc_ir);
    if (sc_res != SPVC_SUCCESS)
        goto done;

    sc_res = spvc_context_create_compiler(sc_ctx, SPVC_BACKEND_HLSL, sc_ir,
                                          SPVC_CAPTURE_MODE_TAKE_OWNERSHIP,
                                          &sc_compiler);
    if (sc_res != SPVC_SUCCESS)
        goto done;

    sc_res = spvc_compiler_create_compiler_options(sc_compiler, &sc_opts);
    if (sc_res != SPVC_SUCCESS)
        goto done;
    sc_res = spvc_compiler_options_set_uint(sc_opts,
        SPVC_COMPILER_OPTION_HLSL_SHADER_MODEL, sc_shader_model);
    if (sc_res != SPVC_SUCCESS)
        goto done;
    if (type == GLSL_SHADER_VERTEX) {

        sc_res = spvc_compiler_options_set_bool(sc_opts,
            SPVC_COMPILER_OPTION_FLIP_VERTEX_Y, SPVC_TRUE);
        if (sc_res != SPVC_SUCCESS)
            goto done;
    }
    sc_res = spvc_compiler_install_compiler_options(sc_compiler, sc_opts);
    if (sc_res != SPVC_SUCCESS)
        goto done;

    sc_res = spvc_compiler_compile(sc_compiler, &hlsl);
    if (sc_res != SPVC_SUCCESS)
        goto done;

    int64_t cross_us = mp_time_us();

    hr = p->D3DCompile(hlsl, strlen(hlsl), ((void*)0), ((void*)0), ((void*)0), "main",
        get_shader_target(ra, type), D3DCOMPILE_OPTIMIZATION_LEVEL3, 0, out,
        &errors);
    if (FAILED(hr)) {
        MP_ERR(ra, "D3DCompile failed: %s\n%.*s", mp_HRESULT_to_str(hr),
               (int)ID3D10Blob_GetBufferSize(errors),
               (char*)ID3D10Blob_GetBufferPointer(errors));
        goto done;
    }

    int64_t d3dcompile_us = mp_time_us();

    MP_VERBOSE(ra, "Compiled a %s shader in %lldus\n", shader_type_name(type),
               d3dcompile_us - start_us);
    MP_VERBOSE(ra, "shaderc: %lldus, SPIRV-Cross: %lldus, D3DCompile: %lldus\n",
               shaderc_us - start_us,
               cross_us - shaderc_us,
               d3dcompile_us - cross_us);

    success = 1;
done:
    if (sc_res != SPVC_SUCCESS) {
        MP_MSG(ra, MSGL_ERR, "SPIRV-Cross failed: %s\n",
               spvc_context_get_last_error_string(sc_ctx));
    }
    int level = success ? MSGL_DEBUG : MSGL_ERR;
    MP_MSG(ra, level, "GLSL source:\n");
    mp_log_source(ra->log, level, glsl);
    if (hlsl) {
        MP_MSG(ra, level, "HLSL source:\n");
        mp_log_source(ra->log, level, hlsl);
    }
    SAFE_RELEASE(errors);
    if (sc_ctx)
        spvc_context_destroy(sc_ctx);
    talloc_free(ta_ctx);
    return success;
}
