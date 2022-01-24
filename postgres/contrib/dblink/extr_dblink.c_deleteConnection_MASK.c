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
typedef  int /*<<< orphan*/  remoteConnHashEnt ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_UNDEFINED_OBJECT ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  HASH_REMOVE ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (scalar_t__,char*,int /*<<< orphan*/ ,int*) ; 
 char* FUNC5 (char const*) ; 
 scalar_t__ remoteConnHash ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC8(const char *name)
{
	remoteConnHashEnt *hentry;
	bool		found;
	char	   *key;

	if (!remoteConnHash)
		remoteConnHash = FUNC0();

	key = FUNC5(name);
	FUNC7(key, FUNC6(key), false);
	hentry = (remoteConnHashEnt *) FUNC4(remoteConnHash,
											   key, HASH_REMOVE, &found);

	if (!hentry)
		FUNC1(ERROR,
				(FUNC2(ERRCODE_UNDEFINED_OBJECT),
				 FUNC3("undefined connection name")));

}