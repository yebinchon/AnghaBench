
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ID3DXEffectImpl {int device; scalar_t__ manager; TYPE_2__* pool; int base_effect; } ;
struct TYPE_4__ {TYPE_1__* lpVtbl; } ;
struct TYPE_3__ {int (* Release ) (TYPE_2__*) ;} ;


 int IDirect3DDevice9_Release (int ) ;
 int IUnknown_Release (scalar_t__) ;
 int TRACE (char*,struct ID3DXEffectImpl*) ;
 int d3dx9_base_effect_cleanup (int *) ;
 int stub1 (TYPE_2__*) ;

__attribute__((used)) static void free_effect(struct ID3DXEffectImpl *effect)
{
    TRACE("Free effect %p\n", effect);

    d3dx9_base_effect_cleanup(&effect->base_effect);

    if (effect->pool)
    {
        effect->pool->lpVtbl->Release(effect->pool);
    }

    if (effect->manager)
    {
        IUnknown_Release(effect->manager);
    }

    IDirect3DDevice9_Release(effect->device);
}
