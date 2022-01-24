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
typedef  int /*<<< orphan*/  HMODULE ;
typedef  int /*<<< orphan*/  GLubyte ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 void* FUNC2 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static void *FUNC3(const GLubyte *procName)
{
    HMODULE oglmod;
    void *res = FUNC2(procName);
    if (res)
        return res;
    oglmod = FUNC0(L"opengl32.dll");
    return FUNC1(oglmod, procName);
}