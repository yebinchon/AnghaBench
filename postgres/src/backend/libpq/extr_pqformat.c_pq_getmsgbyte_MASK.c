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
struct TYPE_3__ {scalar_t__ cursor; scalar_t__ len; scalar_t__* data; } ;
typedef  TYPE_1__* StringInfo ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_PROTOCOL_VIOLATION ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

int
FUNC3(StringInfo msg)
{
	if (msg->cursor >= msg->len)
		FUNC0(ERROR,
				(FUNC1(ERRCODE_PROTOCOL_VIOLATION),
				 FUNC2("no data left in message")));
	return (unsigned char) msg->data[msg->cursor++];
}