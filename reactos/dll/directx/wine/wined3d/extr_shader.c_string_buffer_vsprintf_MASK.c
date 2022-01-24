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
typedef  int /*<<< orphan*/  va_list ;
struct wined3d_string_buffer {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct wined3d_string_buffer*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct wined3d_string_buffer*) ; 

__attribute__((used)) static int FUNC2(struct wined3d_string_buffer *buffer, const char *format, va_list args)
{
    if (!buffer)
        return 0;
    FUNC1(buffer);
    return FUNC0(buffer, format, args);
}