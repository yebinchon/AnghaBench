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
struct debug_buffer {int /*<<< orphan*/  str; } ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__) ; 
 int /*<<< orphan*/  WINED3D_RESOURCE_ACCESS_CPU ; 
 int /*<<< orphan*/  WINED3D_RESOURCE_ACCESS_GPU ; 
 int /*<<< orphan*/  WINED3D_RESOURCE_ACCESS_MAP_R ; 
 int /*<<< orphan*/  WINED3D_RESOURCE_ACCESS_MAP_W ; 
 int /*<<< orphan*/  FUNC2 (struct debug_buffer*,char*) ; 
 char const* FUNC3 (char*,int /*<<< orphan*/ ) ; 

const char *FUNC4(DWORD access)
{
    struct debug_buffer buffer;

    FUNC2(&buffer, "0");
#define ACCESS_TO_STR(x) if (access & x) { debug_append(&buffer, #x, " | "); access &= ~x; }
    ACCESS_TO_STR(WINED3D_RESOURCE_ACCESS_GPU);
    ACCESS_TO_STR(WINED3D_RESOURCE_ACCESS_CPU);
    ACCESS_TO_STR(WINED3D_RESOURCE_ACCESS_MAP_R);
    ACCESS_TO_STR(WINED3D_RESOURCE_ACCESS_MAP_W);
#undef ACCESS_TO_STR
    if (access)
        FUNC1("Unrecognised access flag(s) %#x.\n", access);

    return FUNC3("%s", buffer.str);
}