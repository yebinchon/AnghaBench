#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct d3dx_effect_pool {int dummy; } ;
struct IDirect3DDevice9 {int dummy; } ;
struct ID3DXEffectPool {TYPE_2__* lpVtbl; } ;
struct TYPE_6__ {int /*<<< orphan*/ * techniques; } ;
struct TYPE_4__ {int /*<<< orphan*/ * lpVtbl; } ;
struct ID3DXEffectImpl {int ref; int /*<<< orphan*/ * active_pass; TYPE_3__ base_effect; int /*<<< orphan*/ * active_technique; struct IDirect3DDevice9* device; struct ID3DXEffectPool* pool; TYPE_1__ ID3DXEffect_iface; } ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_5__ {int /*<<< orphan*/  (* AddRef ) (struct ID3DXEffectPool*) ;} ;
typedef  int /*<<< orphan*/  SIZE_T ;
typedef  int /*<<< orphan*/  ID3DInclude ;
typedef  int /*<<< orphan*/  ID3DBlob ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  D3D_SHADER_MACRO ;

/* Variables and functions */
 int /*<<< orphan*/  D3D_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ID3DXEffect_Vtbl ; 
 int /*<<< orphan*/  FUNC2 (struct IDirect3DDevice9*) ; 
 int /*<<< orphan*/  FUNC3 (char*,struct ID3DXEffectImpl*,struct IDirect3DDevice9*,char const*,int /*<<< orphan*/ ,struct ID3DXEffectPool*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **,struct ID3DXEffectImpl*,struct d3dx_effect_pool*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (struct ID3DXEffectImpl*) ; 
 struct d3dx_effect_pool* FUNC6 (struct ID3DXEffectPool*) ; 
 int /*<<< orphan*/  FUNC7 (struct ID3DXEffectPool*) ; 

__attribute__((used)) static HRESULT FUNC8(struct ID3DXEffectImpl *effect, struct IDirect3DDevice9 *device,
        const char *data, SIZE_T data_size, const D3D_SHADER_MACRO *defines, ID3DInclude *include,
        UINT eflags, ID3DBlob **error_messages, struct ID3DXEffectPool *pool, const char *skip_constants)
{
    HRESULT hr;
    struct d3dx_effect_pool *pool_impl = NULL;

    FUNC3("effect %p, device %p, data %p, data_size %lu, pool %p\n", effect, device, data, data_size, pool);

    effect->ID3DXEffect_iface.lpVtbl = &ID3DXEffect_Vtbl;
    effect->ref = 1;

    if (pool)
    {
        pool->lpVtbl->AddRef(pool);
        pool_impl = FUNC6(pool);
    }
    effect->pool = pool;

    FUNC2(device);
    effect->device = device;

    if (FUNC0(hr = FUNC4(&effect->base_effect, data, data_size, defines, include,
            eflags, error_messages, effect, pool_impl, skip_constants)))
    {
        FUNC1("Failed to parse effect, hr %#x.\n", hr);
        FUNC5(effect);
        return hr;
    }

    /* initialize defaults - check because of unsupported ascii effects */
    if (effect->base_effect.techniques)
    {
        effect->active_technique = &effect->base_effect.techniques[0];
        effect->active_pass = NULL;
    }

    return D3D_OK;
}