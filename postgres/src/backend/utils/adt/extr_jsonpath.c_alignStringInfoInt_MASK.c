#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int len; } ;
typedef  TYPE_1__* StringInfo ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(StringInfo buf)
{
	switch (FUNC0(buf->len) - buf->len)
	{
		case 3:
			FUNC1(buf, 0);
			/* FALLTHROUGH */
		case 2:
			FUNC1(buf, 0);
			/* FALLTHROUGH */
		case 1:
			FUNC1(buf, 0);
			/* FALLTHROUGH */
		default:
			break;
	}
}