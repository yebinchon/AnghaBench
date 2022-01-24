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
struct wined3d_string_buffer {int dummy; } ;
struct wined3d_shader_dst_param {int modifiers; int shift; } ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int WINED3DSPDM_MSAMPCENTROID ; 
 int WINED3DSPDM_PARTIALPRECISION ; 
 int WINED3DSPDM_SATURATE ; 
 int /*<<< orphan*/  FUNC1 (struct wined3d_string_buffer*,char*,...) ; 

__attribute__((used)) static void FUNC2(struct wined3d_string_buffer *buffer,
        const struct wined3d_shader_dst_param *dst)
{
    DWORD mmask = dst->modifiers;

    switch (dst->shift)
    {
        case 0: break;
        case 13: FUNC1(buffer, "_d8"); break;
        case 14: FUNC1(buffer, "_d4"); break;
        case 15: FUNC1(buffer, "_d2"); break;
        case 1: FUNC1(buffer, "_x2"); break;
        case 2: FUNC1(buffer, "_x4"); break;
        case 3: FUNC1(buffer, "_x8"); break;
        default: FUNC1(buffer, "_unhandled_shift(%d)", dst->shift); break;
    }

    if (mmask & WINED3DSPDM_SATURATE)         FUNC1(buffer, "_sat");
    if (mmask & WINED3DSPDM_PARTIALPRECISION) FUNC1(buffer, "_pp");
    if (mmask & WINED3DSPDM_MSAMPCENTROID)    FUNC1(buffer, "_centroid");

    mmask &= ~(WINED3DSPDM_SATURATE | WINED3DSPDM_PARTIALPRECISION | WINED3DSPDM_MSAMPCENTROID);
    if (mmask) FUNC0("Unrecognised modifier %#x.\n", mmask);
}