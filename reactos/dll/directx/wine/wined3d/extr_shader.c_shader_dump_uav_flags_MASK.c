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
typedef  int DWORD ;

/* Variables and functions */
 int WINED3DSUF_GLOBALLY_COHERENT ; 
 int WINED3DSUF_ORDER_PRESERVING_COUNTER ; 
 int /*<<< orphan*/  FUNC0 (struct wined3d_string_buffer*,char*,...) ; 

__attribute__((used)) static void FUNC1(struct wined3d_string_buffer *buffer, DWORD uav_flags)
{
    if (uav_flags & WINED3DSUF_GLOBALLY_COHERENT)
    {
        FUNC0(buffer, "_glc");
        uav_flags &= ~WINED3DSUF_GLOBALLY_COHERENT;
    }
    if (uav_flags & WINED3DSUF_ORDER_PRESERVING_COUNTER)
    {
        FUNC0(buffer, "_opc");
        uav_flags &= ~WINED3DSUF_ORDER_PRESERVING_COUNTER;
    }

    if (uav_flags)
        FUNC0(buffer, "_unknown_flags(%#x)", uav_flags);
}