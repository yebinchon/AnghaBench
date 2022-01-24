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
typedef  int /*<<< orphan*/  uint32 ;
typedef  int /*<<< orphan*/  TransactionId ;
typedef  int /*<<< orphan*/  LOCKTAG ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ShareLock ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

void
FUNC5(TransactionId xid, uint32 token)
{
	LOCKTAG		tag;

	FUNC3(tag, xid, token);

	FUNC0(FUNC4(xid));
	FUNC0(token != 0);

	(void) FUNC1(&tag, ShareLock, false, false);
	FUNC2(&tag, ShareLock, false);
}