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
typedef  int /*<<< orphan*/  TransactionId ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 int MAXPGPATH ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WARNING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC4 (char*) ; 

__attribute__((used)) static void
FUNC5(TransactionId xid, bool giveWarning)
{
	char		path[MAXPGPATH];

	FUNC0(path, xid);
	if (FUNC4(path))
		if (errno != ENOENT || giveWarning)
			FUNC1(WARNING,
					(FUNC2(),
					 FUNC3("could not remove file \"%s\": %m", path)));
}