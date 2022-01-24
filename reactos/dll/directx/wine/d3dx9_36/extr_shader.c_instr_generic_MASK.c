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
struct instr_info {char* name; int length; } ;
typedef  int DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 int D3DSPSM_NEG ; 
 int D3DSPSM_NONE ; 
 int D3DSP_SRCMOD_MASK ; 
 int D3DVS_ADDRESSMODE_MASK ; 
 int FALSE ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,...) ; 

__attribute__((used)) static int FUNC3(const struct instr_info *info, DWORD **ptr, char *buffer, BOOL ps)
{
    char *buf = buffer;
    int j;

    buf += FUNC2(buf, "    %s", info->name);
    (*ptr)++;

    if (info->length)
    {
        buf += FUNC0(buf, **ptr);

        for (j = 0; j < info->length; j++)
        {
            buf += FUNC2(buf, "%s ", j ? "," : "");

            if ((j != 0) && ((**ptr & D3DSP_SRCMOD_MASK) != D3DSPSM_NONE))
            {
                if ((**ptr & D3DSP_SRCMOD_MASK) == D3DSPSM_NEG)
                    buf += FUNC2(buf, "-");
                else
                    buf += FUNC2(buf, "*");
            }

            buf += FUNC1(buf, **ptr, j == 0, ps);

            if (*(*ptr)++ & D3DVS_ADDRESSMODE_MASK)
            {
                buf += FUNC2(buf, "[");
                buf += FUNC1(buf, **ptr, FALSE, FALSE);
                buf += FUNC2(buf, "]");
                (*ptr)++;
            }
        }
    }
    buf += FUNC2(buf, "\n");
    return buf - buffer;
}