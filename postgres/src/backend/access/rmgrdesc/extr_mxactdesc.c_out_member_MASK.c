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
struct TYPE_3__ {int status; int /*<<< orphan*/  xid; } ;
typedef  int /*<<< orphan*/  StringInfo ;
typedef  TYPE_1__ MultiXactMember ;

/* Variables and functions */
#define  MultiXactStatusForKeyShare 133 
#define  MultiXactStatusForNoKeyUpdate 132 
#define  MultiXactStatusForShare 131 
#define  MultiXactStatusForUpdate 130 
#define  MultiXactStatusNoKeyUpdate 129 
#define  MultiXactStatusUpdate 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC2(StringInfo buf, MultiXactMember *member)
{
	FUNC0(buf, "%u ", member->xid);
	switch (member->status)
	{
		case MultiXactStatusForKeyShare:
			FUNC1(buf, "(keysh) ");
			break;
		case MultiXactStatusForShare:
			FUNC1(buf, "(sh) ");
			break;
		case MultiXactStatusForNoKeyUpdate:
			FUNC1(buf, "(fornokeyupd) ");
			break;
		case MultiXactStatusForUpdate:
			FUNC1(buf, "(forupd) ");
			break;
		case MultiXactStatusNoKeyUpdate:
			FUNC1(buf, "(nokeyupd) ");
			break;
		case MultiXactStatusUpdate:
			FUNC1(buf, "(upd) ");
			break;
		default:
			FUNC1(buf, "(unk) ");
			break;
	}
}