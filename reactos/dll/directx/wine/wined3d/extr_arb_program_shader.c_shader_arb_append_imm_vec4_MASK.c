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
 int /*<<< orphan*/  FUNC0 (struct wined3d_string_buffer*,char*,char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (float const,char*) ; 

__attribute__((used)) static void FUNC2(struct wined3d_string_buffer *buffer, const float *values)
{
    char str[4][17];

    FUNC1(values[0], str[0]);
    FUNC1(values[1], str[1]);
    FUNC1(values[2], str[2]);
    FUNC1(values[3], str[3]);
    FUNC0(buffer, "{%s, %s, %s, %s}", str[0], str[1], str[2], str[3]);
}