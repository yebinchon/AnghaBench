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
struct thread {scalar_t__ fd; int /*<<< orphan*/  filename; int /*<<< orphan*/  buf; int /*<<< orphan*/  buf_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct thread *t)
{
	t->buf = FUNC1(t->buf_size);
	FUNC0(!t->buf, "malloc");

	t->fd = FUNC2(t->filename, O_RDWR);
	FUNC0(t->fd < 0, "%s", t->filename);
}