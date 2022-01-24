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
struct vsock_diag_msg {int dummy; } ;
struct vsock_stat {int /*<<< orphan*/  list; struct vsock_diag_msg msg; } ;
struct list_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct list_head*) ; 
 struct vsock_stat* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static void FUNC4(struct list_head *sockets,
			   const struct vsock_diag_msg *resp)
{
	struct vsock_stat *st;

	st = FUNC2(sizeof(*st));
	if (!st) {
		FUNC3("malloc");
		FUNC0(EXIT_FAILURE);
	}

	st->msg = *resp;
	FUNC1(&st->list, sockets);
}