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
struct bytecode_buffer {int dummy; } ;
struct bwriter_shader {size_t num_samplers; TYPE_1__* samplers; } ;
struct TYPE_2__ {size_t const regnum; int /*<<< orphan*/  mod; int /*<<< orphan*/  type; } ;
typedef  size_t DWORD ;

/* Variables and functions */
 int D3DSIO_DCL ; 
 int D3DSI_INSTLENGTH_SHIFT ; 
 int /*<<< orphan*/  D3DSPR_SAMPLER ; 
 size_t const D3DSP_REGNUM_MASK ; 
 size_t D3DSP_TEXTURETYPE_MASK ; 
 unsigned int D3DSP_WRITEMASK_ALL ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bytecode_buffer*,size_t) ; 

__attribute__((used)) static void FUNC4(const struct bwriter_shader *shader, struct bytecode_buffer *buffer) {
    DWORD i;
    DWORD instr_dcl = D3DSIO_DCL | (2 << D3DSI_INSTLENGTH_SHIFT);
    DWORD token;
    const DWORD reg = (1u << 31) | FUNC2( D3DSPR_SAMPLER, 0 ) | D3DSP_WRITEMASK_ALL;

    for(i = 0; i < shader->num_samplers; i++) {
        /* Write the DCL instruction */
        FUNC3(buffer, instr_dcl);
        token = (1u << 31);
        /* Already shifted */
        token |= (FUNC1(shader->samplers[i].type)) & D3DSP_TEXTURETYPE_MASK;
        FUNC3(buffer, token);
        token = reg | (shader->samplers[i].regnum & D3DSP_REGNUM_MASK);
        token |= FUNC0(shader->samplers[i].mod);
        FUNC3(buffer, token);
    }
}