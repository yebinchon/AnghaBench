#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ead_msg_user {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  username; } ;
struct TYPE_4__ {void* len; void* type; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EAD_TYPE_ACK_USERNAME ; 
 int EAD_TYPE_SET_USERNAME ; 
 int /*<<< orphan*/  handle_none ; 
 void* FUNC1 (int) ; 
 TYPE_1__* msg ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  user ; 
 int /*<<< orphan*/  username ; 

__attribute__((used)) static int
FUNC4(void)
{
	msg->type = FUNC1(EAD_TYPE_SET_USERNAME);
	msg->len = FUNC1(sizeof(struct ead_msg_user));
	FUNC3(FUNC0(msg, user)->username, username);
	return FUNC2(EAD_TYPE_ACK_USERNAME, handle_none, 1);
}