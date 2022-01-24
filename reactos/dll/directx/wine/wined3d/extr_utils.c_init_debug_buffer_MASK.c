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
struct debug_buffer {int /*<<< orphan*/  str; int /*<<< orphan*/  size; int /*<<< orphan*/  ptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static void FUNC2(struct debug_buffer *buffer, const char *default_string)
{
    FUNC1(buffer->str, default_string);
    buffer->ptr = buffer->str;
    buffer->size = FUNC0(buffer->str);
}