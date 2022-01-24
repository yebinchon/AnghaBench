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
typedef  int DWORD ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 (int) ; 
 scalar_t__ FUNC6 (int) ; 
 scalar_t__ FUNC7 (int) ; 
 scalar_t__ FUNC8 (int) ; 
 scalar_t__ FUNC9 (int) ; 
 scalar_t__ FUNC10 (int) ; 
 scalar_t__ FUNC11 (int) ; 
 scalar_t__ FUNC12 (int) ; 
 scalar_t__ FUNC13 (int) ; 
 scalar_t__ FUNC14 (int) ; 
 scalar_t__ FUNC15 (int) ; 
 scalar_t__ FUNC16 (int) ; 
 scalar_t__ FUNC17 (int) ; 
 scalar_t__ FUNC18 (int) ; 
 scalar_t__ FUNC19 (int) ; 
 scalar_t__ FUNC20 (int) ; 
 scalar_t__ FUNC21 (int) ; 
 scalar_t__ FUNC22 (int) ; 
 scalar_t__ FUNC23 (int) ; 
 scalar_t__ FUNC24 (int) ; 
 scalar_t__ FUNC25 (int) ; 
 scalar_t__ FUNC26 (int) ; 
 scalar_t__ FUNC27 (int) ; 
 scalar_t__ FUNC28 (int) ; 
 scalar_t__ FUNC29 (int) ; 
 scalar_t__ FUNC30 (int) ; 
 scalar_t__ FUNC31 (int) ; 
 int FUNC32 (int /*<<< orphan*/ ) ; 
 int FUNC33 (int /*<<< orphan*/ ) ; 
 int FUNC34 (int /*<<< orphan*/ ) ; 
 int FUNC35 (int,int /*<<< orphan*/ ) ; 
 int FUNC36 (int /*<<< orphan*/ ) ; 
 int WINED3D_HIGHEST_TEXTURE_STATE ; 
 int WINED3D_SHADER_TYPE_COMPUTE ; 
 int FUNC37 (int) ; 
 int /*<<< orphan*/  FUNC38 (int) ; 
 int FUNC39 (int) ; 
 int FUNC40 (int) ; 
 char const* FUNC41 (char*,int,...) ; 

const char *FUNC42(DWORD state)
{
    if (FUNC23(state))
        return FUNC41("STATE_RENDER(%s)", FUNC37(state - FUNC32(0)));
    if (FUNC28(state))
    {
        DWORD texture_stage = (state - FUNC35(0, 0)) / (WINED3D_HIGHEST_TEXTURE_STATE + 1);
        DWORD texture_state = state - FUNC35(texture_stage, 0);
        return FUNC41("STATE_TEXTURESTAGE(%#x, %s)",
                texture_stage, FUNC38(texture_state));
    }
    if (FUNC24(state))
        return FUNC41("STATE_SAMPLER(%#x)", state - FUNC33(0));
    if (FUNC9(state))
        return FUNC41("STATE_SHADER(%s)", FUNC40(WINED3D_SHADER_TYPE_COMPUTE));
    if (FUNC15(state))
        return FUNC41("STATE_SHADER(%s)", FUNC40(state - FUNC34(0)));
    if (FUNC8(state))
        return FUNC41("STATE_CONSTANT_BUFFER(%s)", FUNC40(WINED3D_SHADER_TYPE_COMPUTE));
    if (FUNC14(state))
        return FUNC41("STATE_CONSTANT_BUFFER(%s)", FUNC40(state - FUNC2(0)));
    if (FUNC10(state))
        return "STATE_COMPUTE_SHADER_RESOURCE_BINDING";
    if (FUNC16(state))
        return "STATE_GRAPHICS_SHADER_RESOURCE_BINDING";
    if (FUNC11(state))
        return "STATE_COMPUTE_UNORDERED_ACCESS_VIEW_BINDING";
    if (FUNC17(state))
        return "STATE_GRAPHICS_UNORDERED_ACCESS_VIEW_BINDING";
    if (FUNC29(state))
        return FUNC41("STATE_TRANSFORM(%s)", FUNC39(state - FUNC36(0)));
    if (FUNC26(state))
        return "STATE_STREAMSRC";
    if (FUNC18(state))
        return "STATE_INDEXBUFFER";
    if (FUNC30(state))
        return "STATE_VDECL";
    if (FUNC31(state))
        return "STATE_VIEWPORT";
    if (FUNC19(state))
        return "STATE_LIGHT_TYPE";
    if (FUNC3(state))
        return FUNC41("STATE_ACTIVELIGHT(%#x)", state - FUNC0(0));
    if (FUNC25(state))
        return "STATE_SCISSORRECT";
    if (FUNC6(state))
        return FUNC41("STATE_CLIPPLANE(%#x)", state - FUNC1(0));
    if (FUNC20(state))
        return "STATE_MATERIAL";
    if (FUNC13(state))
        return "STATE_FRONTFACE";
    if (FUNC21(state))
        return "STATE_POINTSPRITECOORDORIGIN";
    if (FUNC4(state))
        return "STATE_BASEVERTEXINDEX";
    if (FUNC12(state))
        return "STATE_FRAMEBUFFER";
    if (FUNC22(state))
        return "STATE_POINT_ENABLE";
    if (FUNC7(state))
        return "STATE_COLOR_KEY";
    if (FUNC27(state))
        return "STATE_STREAM_OUTPUT";
    if (FUNC5(state))
        return "STATE_BLEND";

    return FUNC41("UNKNOWN_STATE(%#x)", state);
}