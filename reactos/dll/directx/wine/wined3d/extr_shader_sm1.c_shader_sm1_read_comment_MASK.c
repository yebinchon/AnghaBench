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
typedef  int /*<<< orphan*/  token ;
typedef  int UINT ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ WINED3D_SM1_COMMENT_SIZE_MASK ; 
 scalar_t__ WINED3D_SM1_COMMENT_SIZE_SHIFT ; 
 scalar_t__ WINED3D_SM1_OPCODE_MASK ; 
 scalar_t__ WINED3D_SM1_OP_COMMENT ; 
 scalar_t__ const FUNC1 (char,char,char,char) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int) ; 

__attribute__((used)) static void FUNC3(const DWORD **ptr)
{
    DWORD token = **ptr;
    const char *comment;
    UINT size;

    while ((token & WINED3D_SM1_OPCODE_MASK) == WINED3D_SM1_OP_COMMENT)
    {
        size = (token & WINED3D_SM1_COMMENT_SIZE_MASK) >> WINED3D_SM1_COMMENT_SIZE_SHIFT;
        comment = (const char *)++(*ptr);
        *ptr += size;

        if (size > 1 && *(const DWORD *)comment == FUNC1('T', 'E', 'X', 'T'))
        {
            const char *end = comment + size * sizeof(token);
            const char *p = comment + sizeof(token);
            const char *line = p;

            FUNC0("// TEXT\n");
            while (p != end)
            {
                if (*p == '\n')
                {
                    UINT len = p - line;
                    if (len && *(p - 1) == '\r') --len;
                    FUNC0("// %s\n", FUNC2(line, len));
                    line = ++p;
                }
                else ++p;
            }
            if (line != p)
                FUNC0("// %s\n", FUNC2(line, p - line));
        }
        else if (size)
            FUNC0("// %s\n", FUNC2(comment, size * sizeof(token)));
        else
            break;

        token = **ptr;
    }
}