#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int vdiag_ino; int /*<<< orphan*/  vdiag_shutdown; int /*<<< orphan*/  vdiag_state; int /*<<< orphan*/  vdiag_type; int /*<<< orphan*/  vdiag_dst_port; int /*<<< orphan*/  vdiag_dst_cid; int /*<<< orphan*/  vdiag_src_port; int /*<<< orphan*/  vdiag_src_cid; } ;
struct vsock_stat {TYPE_1__ msg; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(FILE *fp, struct vsock_stat *st)
{
	FUNC1(fp, st->msg.vdiag_src_cid, st->msg.vdiag_src_port);
	FUNC0(fp, " ");
	FUNC1(fp, st->msg.vdiag_dst_cid, st->msg.vdiag_dst_port);
	FUNC0(fp, " %s %s %s %u\n",
		FUNC4(st->msg.vdiag_type),
		FUNC3(st->msg.vdiag_state),
		FUNC2(st->msg.vdiag_shutdown),
		st->msg.vdiag_ino);
}