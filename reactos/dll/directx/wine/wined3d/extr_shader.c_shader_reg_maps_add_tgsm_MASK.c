#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct wined3d_shader_tgsm {unsigned int size; unsigned int stride; } ;
struct TYPE_2__ {scalar_t__ type; } ;
struct wined3d_shader_reg_maps {struct wined3d_shader_tgsm* tgsm; int /*<<< orphan*/  tgsm_count; int /*<<< orphan*/  tgsm_capacity; TYPE_1__ shader_version; } ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned int) ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 unsigned int MAX_TGSM_REGISTERS ; 
 int /*<<< orphan*/  S_OK ; 
 scalar_t__ WINED3D_SHADER_TYPE_COMPUTE ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void**,int /*<<< orphan*/ *,unsigned int,int) ; 

__attribute__((used)) static HRESULT FUNC4(struct wined3d_shader_reg_maps *reg_maps,
        unsigned int register_idx, unsigned int size, unsigned int stride)
{
    struct wined3d_shader_tgsm *tgsm;

    if (register_idx >= MAX_TGSM_REGISTERS)
    {
        FUNC0("Invalid TGSM register index %u.\n", register_idx);
        return S_OK;
    }
    if (reg_maps->shader_version.type != WINED3D_SHADER_TYPE_COMPUTE)
    {
        FUNC1("TGSM declarations are allowed only in compute shaders.\n");
        return S_OK;
    }

    if (!FUNC3((void **)&reg_maps->tgsm, &reg_maps->tgsm_capacity,
            register_idx + 1, sizeof(*reg_maps->tgsm)))
        return E_OUTOFMEMORY;

    reg_maps->tgsm_count = FUNC2(register_idx + 1, reg_maps->tgsm_count);
    tgsm = &reg_maps->tgsm[register_idx];
    tgsm->size = size;
    tgsm->stride = stride;
    return S_OK;
}