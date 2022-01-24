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
typedef  int /*<<< orphan*/  zval ;
typedef  int /*<<< orphan*/  zend_string ;
struct msghdr {TYPE_1__* msg_iov; } ;
typedef  int /*<<< orphan*/  ser_context ;
struct TYPE_2__ {int /*<<< orphan*/  iov_base; int /*<<< orphan*/  iov_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 

__attribute__((used)) static void FUNC6(zval *elem, unsigned i, void **args, ser_context *ctx)
{
	struct msghdr	*msg = args[0];
	zend_string     *str, *tmp_str;

	str = FUNC5(elem, &tmp_str);

	msg->msg_iov[i - 1].iov_base = FUNC2(FUNC0(str), ctx);
	msg->msg_iov[i - 1].iov_len = FUNC0(str);
	FUNC3(msg->msg_iov[i - 1].iov_base, FUNC1(str), FUNC0(str));

	FUNC4(tmp_str);
}