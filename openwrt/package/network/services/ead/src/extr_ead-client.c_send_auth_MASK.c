#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ead_msg_auth {int /*<<< orphan*/  data; } ;
struct TYPE_3__ {void* len; void* type; } ;

/* Variables and functions */
 int /*<<< orphan*/  B ; 
 struct ead_msg_auth* FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EAD_TYPE_DONE_AUTH ; 
 int EAD_TYPE_SEND_AUTH ; 
 struct ead_msg_auth* auth ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  handle_done_auth ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* msg ; 
 int /*<<< orphan*/  password ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  skey ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tc ; 

__attribute__((used)) static int
FUNC9(void)
{
	struct ead_msg_auth *auth = FUNC0(msg, auth);

	FUNC4();
	FUNC7(tc, password);
	skey = FUNC6(tc, &B);
	if (!skey)
		return 0;

	FUNC1(skey);
	msg->type = FUNC2(EAD_TYPE_SEND_AUTH);
	msg->len = FUNC2(sizeof(struct ead_msg_auth));
	FUNC3(auth->data, FUNC8(tc), sizeof(auth->data));
	return FUNC5(EAD_TYPE_DONE_AUTH, handle_done_auth, 1);
}