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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const**,unsigned int*,char**,unsigned int*,struct wined3d_string_buffer*) ; 
 int /*<<< orphan*/  FUNC1 (struct wined3d_string_buffer*,char*,...) ; 

__attribute__((used)) static void FUNC2(const char **varyings,
        unsigned int *varying_count, char **strings, unsigned int *strings_length,
        struct wined3d_string_buffer *buffer, unsigned int component_count)
{
    unsigned int j;

    for (j = 0; j < component_count / 4; ++j)
    {
        FUNC1(buffer, "gl_SkipComponents4");
        FUNC0(varyings, varying_count, strings, strings_length, buffer);
    }
    if (component_count % 4)
    {
        FUNC1(buffer, "gl_SkipComponents%u", component_count % 4);
        FUNC0(varyings, varying_count, strings, strings_length, buffer);
    }
}