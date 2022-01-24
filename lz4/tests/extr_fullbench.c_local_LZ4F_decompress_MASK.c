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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 size_t FUNC1 (int /*<<< orphan*/ ,char*,size_t*,char const*,size_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  g_dCtx ; 

__attribute__((used)) static int FUNC4(const char* in, char* out, int inSize, int outSize)
{
    size_t srcSize = (size_t)inSize;
    size_t dstSize = (size_t)outSize;
    size_t result;
    FUNC2(inSize >= 0);
    FUNC2(outSize >= 0);
    result = FUNC1(g_dCtx, out, &dstSize, in, &srcSize, NULL);
    if (result!=0) { FUNC0("Error decompressing frame : unfinished frame \n"); FUNC3(8); }
    if (srcSize != (size_t)inSize) { FUNC0("Error decompressing frame : read size incorrect \n"); FUNC3(9); }
    return (int)dstSize;
}