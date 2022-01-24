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
struct list_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct list_head*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct list_head*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC4(struct list_head *head)
{
	if (!FUNC2(head)) {
		FUNC1(stderr, "expected no sockets\n");
		FUNC3(stderr, head);
		FUNC0(1);
	}
}