#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct d3dcompiler_shader_reflection {int instruction_count; int temp_register_count; int dcl_count; int float_instruction_count; int int_instruction_count; int uint_instruction_count; int static_flow_control_count; int dynamic_flow_control_count; int temp_array_count; int array_instruction_count; int cut_instruction_count; int emit_instruction_count; int texture_normal_instructions; int texture_load_instructions; int texture_comp_instructions; int texture_bias_instructions; int texture_gradient_instructions; int mov_instruction_count; int conversion_instruction_count; int input_primitive; int gs_output_topology; int gs_max_output_vertex_count; int c_control_points; int hs_output_primitive; int hs_prtitioning; int tessellator_domain; } ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  E_FAIL ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char const**,int*) ; 
 int /*<<< orphan*/  FUNC3 (char const**,int) ; 

__attribute__((used)) static HRESULT FUNC4(struct d3dcompiler_shader_reflection *r, const char *data, DWORD data_size)
{
    const char *ptr = data;
    DWORD size = data_size >> 2;

    FUNC1("Size %u\n", size);

    FUNC2(&ptr, &r->instruction_count);
    FUNC1("InstructionCount: %u\n", r->instruction_count);

    FUNC2(&ptr, &r->temp_register_count);
    FUNC1("TempRegisterCount: %u\n", r->temp_register_count);

    FUNC3(&ptr, 1);

    FUNC2(&ptr, &r->dcl_count);
    FUNC1("DclCount: %u\n", r->dcl_count);

    FUNC2(&ptr, &r->float_instruction_count);
    FUNC1("FloatInstructionCount: %u\n", r->float_instruction_count);

    FUNC2(&ptr, &r->int_instruction_count);
    FUNC1("IntInstructionCount: %u\n", r->int_instruction_count);

    FUNC2(&ptr, &r->uint_instruction_count);
    FUNC1("UintInstructionCount: %u\n", r->uint_instruction_count);

    FUNC2(&ptr, &r->static_flow_control_count);
    FUNC1("StaticFlowControlCount: %u\n", r->static_flow_control_count);

    FUNC2(&ptr, &r->dynamic_flow_control_count);
    FUNC1("DynamicFlowControlCount: %u\n", r->dynamic_flow_control_count);

    FUNC3(&ptr, 1);

    FUNC2(&ptr, &r->temp_array_count);
    FUNC1("TempArrayCount: %u\n", r->temp_array_count);

    FUNC2(&ptr, &r->array_instruction_count);
    FUNC1("ArrayInstructionCount: %u\n", r->array_instruction_count);

    FUNC2(&ptr, &r->cut_instruction_count);
    FUNC1("CutInstructionCount: %u\n", r->cut_instruction_count);

    FUNC2(&ptr, &r->emit_instruction_count);
    FUNC1("EmitInstructionCount: %u\n", r->emit_instruction_count);

    FUNC2(&ptr, &r->texture_normal_instructions);
    FUNC1("TextureNormalInstructions: %u\n", r->texture_normal_instructions);

    FUNC2(&ptr, &r->texture_load_instructions);
    FUNC1("TextureLoadInstructions: %u\n", r->texture_load_instructions);

    FUNC2(&ptr, &r->texture_comp_instructions);
    FUNC1("TextureCompInstructions: %u\n", r->texture_comp_instructions);

    FUNC2(&ptr, &r->texture_bias_instructions);
    FUNC1("TextureBiasInstructions: %u\n", r->texture_bias_instructions);

    FUNC2(&ptr, &r->texture_gradient_instructions);
    FUNC1("TextureGradientInstructions: %u\n", r->texture_gradient_instructions);

    FUNC2(&ptr, &r->mov_instruction_count);
    FUNC1("MovInstructionCount: %u\n", r->mov_instruction_count);

    FUNC3(&ptr, 1);

    FUNC2(&ptr, &r->conversion_instruction_count);
    FUNC1("ConversionInstructionCount: %u\n", r->conversion_instruction_count);

    FUNC3(&ptr, 1);

#ifdef __REACTOS__ /* DWORD* cast added */
    read_dword(&ptr, (DWORD*)&r->input_primitive);
#else
    FUNC2(&ptr, &r->input_primitive);
#endif
    FUNC1("InputPrimitive: %x\n", r->input_primitive);

#ifdef __REACTOS__ /* DWORD* cast added */
    read_dword(&ptr, (DWORD*)&r->gs_output_topology);
#else
    FUNC2(&ptr, &r->gs_output_topology);
#endif
    FUNC1("GSOutputTopology: %x\n", r->gs_output_topology);

    FUNC2(&ptr, &r->gs_max_output_vertex_count);
    FUNC1("GSMaxOutputVertexCount: %u\n", r->gs_max_output_vertex_count);

    FUNC3(&ptr, 2);

    /* old dx10 stat size */
    if (size == 28) return S_OK;

    FUNC3(&ptr, 1);

    /* dx10 stat size */
    if (size == 29) return S_OK;

    FUNC3(&ptr, 1);

    FUNC2(&ptr, &r->c_control_points);
    FUNC1("cControlPoints: %u\n", r->c_control_points);

#ifdef __REACTOS__ /* DWORD* cast added */
    read_dword(&ptr, (DWORD*)&r->hs_output_primitive);
#else
    FUNC2(&ptr, &r->hs_output_primitive);
#endif
    FUNC1("HSOutputPrimitive: %x\n", r->hs_output_primitive);

#ifdef __REACTOS__ /* DWORD* cast added */
    read_dword(&ptr, (DWORD*)&r->hs_prtitioning);
#else
    FUNC2(&ptr, &r->hs_prtitioning);
#endif
    FUNC1("HSPartitioning: %x\n", r->hs_prtitioning);

#ifdef __REACTOS__ /* DWORD* cast added */
    read_dword(&ptr, (DWORD*)&r->tessellator_domain);
#else
    FUNC2(&ptr, &r->tessellator_domain);
#endif
    FUNC1("TessellatorDomain: %x\n", r->tessellator_domain);

    FUNC3(&ptr, 3);

    /* dx11 stat size */
    if (size == 37) return S_OK;

    FUNC0("Unhandled size %u\n", size);

    return E_FAIL;
}