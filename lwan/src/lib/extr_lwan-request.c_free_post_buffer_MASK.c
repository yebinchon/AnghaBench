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
struct file_backed_buffer {int /*<<< orphan*/  size; int /*<<< orphan*/  ptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct file_backed_buffer*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(void *data)
{
    struct file_backed_buffer *buf = data;

    FUNC1(buf->ptr, buf->size);
    FUNC0(buf);
}