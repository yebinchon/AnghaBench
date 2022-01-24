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
struct wined3d_context {int dummy; } ;
struct wined3d_buffer {int /*<<< orphan*/  buffer_object; int /*<<< orphan*/  buffer_type_hint; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wined3d_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct wined3d_buffer *buffer, struct wined3d_context *context)
{
    FUNC0(context, buffer->buffer_type_hint, buffer->buffer_object);
}