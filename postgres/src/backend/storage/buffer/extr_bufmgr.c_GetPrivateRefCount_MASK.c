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
typedef  int /*<<< orphan*/  int32 ;
struct TYPE_3__ {int /*<<< orphan*/  refcount; } ;
typedef  TYPE_1__ PrivateRefCountEntry ;
typedef  int /*<<< orphan*/  Buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline int32
FUNC4(Buffer buffer)
{
	PrivateRefCountEntry *ref;

	FUNC0(FUNC2(buffer));
	FUNC0(!FUNC1(buffer));

	/*
	 * Not moving the entry - that's ok for the current users, but we might
	 * want to change this one day.
	 */
	ref = FUNC3(buffer, false);

	if (ref == NULL)
		return 0;
	return ref->refcount;
}