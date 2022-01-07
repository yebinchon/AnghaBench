
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ra_renderpass_run_params {int * compute_groups; struct ra_renderpass* pass; } ;
struct ra_renderpass {struct d3d_rpass* priv; } ;
struct ra_d3d11 {int ctx; } ;
struct ra {struct ra_d3d11* priv; } ;
struct d3d_rpass {int cs; } ;
typedef int ID3D11UnorderedAccessView ;
typedef int ID3D11ShaderResourceView ;
typedef int ID3D11SamplerState ;
typedef int ID3D11Buffer ;


 int ID3D11DeviceContext_CSSetConstantBuffers (int ,int ,int,int **) ;
 int ID3D11DeviceContext_CSSetSamplers (int ,int ,int,int **) ;
 int ID3D11DeviceContext_CSSetShader (int ,int ,int *,int ) ;
 int ID3D11DeviceContext_CSSetShaderResources (int ,int ,int,int **) ;
 int ID3D11DeviceContext_CSSetUnorderedAccessViews (int ,int ,int,int **,int *) ;
 int ID3D11DeviceContext_Dispatch (int ,int ,int ,int ) ;

__attribute__((used)) static void renderpass_run_compute(struct ra *ra,
                                   const struct ra_renderpass_run_params *params,
                                   ID3D11Buffer *ubos[], int ubos_len,
                                   ID3D11SamplerState *samplers[],
                                   ID3D11ShaderResourceView *srvs[],
                                   int samplers_len,
                                   ID3D11UnorderedAccessView *uavs[],
                                   int uavs_len)
{
    struct ra_d3d11 *p = ra->priv;
    struct ra_renderpass *pass = params->pass;
    struct d3d_rpass *pass_p = pass->priv;

    ID3D11DeviceContext_CSSetShader(p->ctx, pass_p->cs, ((void*)0), 0);
    ID3D11DeviceContext_CSSetConstantBuffers(p->ctx, 0, ubos_len, ubos);
    ID3D11DeviceContext_CSSetShaderResources(p->ctx, 0, samplers_len, srvs);
    ID3D11DeviceContext_CSSetSamplers(p->ctx, 0, samplers_len, samplers);
    ID3D11DeviceContext_CSSetUnorderedAccessViews(p->ctx, 0, uavs_len, uavs,
                                                  ((void*)0));

    ID3D11DeviceContext_Dispatch(p->ctx, params->compute_groups[0],
                                         params->compute_groups[1],
                                         params->compute_groups[2]);

    for (int i = 0; i < ubos_len; i++)
        ubos[i] = ((void*)0);
    for (int i = 0; i < samplers_len; i++) {
        samplers[i] = ((void*)0);
        srvs[i] = ((void*)0);
    }
    for (int i = 0; i < uavs_len; i++)
        uavs[i] = ((void*)0);
    ID3D11DeviceContext_CSSetConstantBuffers(p->ctx, 0, ubos_len, ubos);
    ID3D11DeviceContext_CSSetShaderResources(p->ctx, 0, samplers_len, srvs);
    ID3D11DeviceContext_CSSetSamplers(p->ctx, 0, samplers_len, samplers);
    ID3D11DeviceContext_CSSetUnorderedAccessViews(p->ctx, 0, uavs_len, uavs,
                                                  ((void*)0));
}
