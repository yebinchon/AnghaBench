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
typedef  struct nl_msg nl_msg ;
struct nl_cb {int dummy; } ;

/* Variables and functions */
 int NLM_F_DUMP ; 
 int /*<<< orphan*/  NL_AUTO_PID ; 
 int /*<<< orphan*/  NL_AUTO_SEQ ; 
 int /*<<< orphan*/  NL_CB_ACK ; 
 int /*<<< orphan*/  NL_CB_CUSTOM ; 
 int /*<<< orphan*/  NL_CB_FINISH ; 
 int /*<<< orphan*/  NL_CB_VALID ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  family ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nl_msg*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  handle ; 
 struct nl_cb* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct nl_cb*) ; 
 int /*<<< orphan*/  FUNC6 (struct nl_cb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int (*) (struct nl_msg*,void*),int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct nl_cb*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct nl_msg*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 struct nl_msg* FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (struct nl_msg*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  wait_handler ; 

__attribute__((used)) static int
FUNC12(int cmd, int (*call)(struct nl_msg *, void *),
		int (*data)(struct nl_msg *, void *), void *arg)
{
	struct nl_msg *msg;
	struct nl_cb *cb = NULL;
	int finished;
	int flags = 0;
	int err = 0;

	msg = FUNC10();
	if (!msg) {
		FUNC1(stderr, "Out of memory!\n");
		FUNC0(1);
	}

	if (!data)
		flags |= NLM_F_DUMP;

	FUNC3(msg, NL_AUTO_PID, NL_AUTO_SEQ, FUNC2(family), 0, flags, cmd, 0);
	if (data) {
		err = data(msg, arg);
		if (err < 0)
			goto nla_put_failure;
	}

	cb = FUNC4(NL_CB_CUSTOM);
	if (!cb) {
		FUNC1(stderr, "nl_cb_alloc failed.\n");
		FUNC0(1);
	}

	err = FUNC8(handle, msg);
	if (err < 0) {
		FUNC1(stderr, "nl_send_auto_complete failed: %d\n", err);
		goto out;
	}

	finished = 0;

	if (call)
		FUNC6(cb, NL_CB_VALID, NL_CB_CUSTOM, call, arg);

	if (data)
		FUNC6(cb, NL_CB_ACK, NL_CB_CUSTOM, wait_handler, &finished);
	else
		FUNC6(cb, NL_CB_FINISH, NL_CB_CUSTOM, wait_handler, &finished);

	err = FUNC7(handle, cb);
	if (err < 0) {
		goto out;
	}

	if (!finished)
		err = FUNC9(handle);

out:
	if (cb)
		FUNC5(cb);
nla_put_failure:
	FUNC11(msg);
	return err;
}