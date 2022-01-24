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
struct instr_info {int dummy; } ;
typedef  int DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int D3DDECLUSAGE_COLOR ; 
 int D3DSP_DCL_USAGEINDEX_MASK ; 
 int D3DSP_DCL_USAGEINDEX_SHIFT ; 
 int D3DSP_DCL_USAGE_MASK ; 
 int D3DSP_DCL_USAGE_SHIFT ; 
 int D3DSP_TEXTURETYPE_MASK ; 
 int D3DSP_TEXTURETYPE_SHIFT ; 
 int D3DSTT_VOLUME ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char** decl_usage ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,...) ; 
 char** tex_type ; 

__attribute__((used)) static int FUNC3(const struct instr_info *info, DWORD **ptr, char *buffer, BOOL ps)
{
    DWORD param1 = *++*ptr;
    DWORD param2 = *++*ptr;
    DWORD usage = (param1 & D3DSP_DCL_USAGE_MASK) >> D3DSP_DCL_USAGE_SHIFT;
    DWORD usage_index = (param1 & D3DSP_DCL_USAGEINDEX_MASK) >> D3DSP_DCL_USAGEINDEX_SHIFT;
    char *buf = buffer;

    buf += FUNC2(buf, "    dcl");
    if (ps)
    {
        if (param1 & D3DSP_TEXTURETYPE_MASK)
            buf += FUNC2(buf, "_%s", (usage <= D3DSTT_VOLUME) ?
                tex_type[(param1 & D3DSP_TEXTURETYPE_MASK) >> D3DSP_TEXTURETYPE_SHIFT] : "???");
    }
    else
    {
        buf += FUNC2(buf, "_%s", (usage <= D3DDECLUSAGE_COLOR) ? decl_usage[usage] : "???");
        if (usage_index)
            buf += FUNC2(buf, "%d", usage_index);
    }

    buf += FUNC0(buf, param2);
    buf += FUNC2(buf, " ");
    buf += FUNC1(buf, param2, TRUE, TRUE);
    buf += FUNC2(buf, "\n");
    (*ptr)++;
    return buf - buffer;
}