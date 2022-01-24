#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ead_msg_number {int /*<<< orphan*/  data; } ;
struct TYPE_5__ {int len; int /*<<< orphan*/  data; } ;
struct TYPE_4__ {int /*<<< orphan*/  len; } ;

/* Variables and functions */
 TYPE_3__ B ; 
 struct ead_msg_number* FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bbuf ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* msg ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  number ; 

__attribute__((used)) static bool
FUNC3(void)
{
	struct ead_msg_number *num = FUNC0(msg, number);
	int len = FUNC2(msg->len) - sizeof(struct ead_msg_number);

	B.data = bbuf;
	B.len = len;
	FUNC1(bbuf, num->data, len);
	return true;
}