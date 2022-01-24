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
struct TYPE_2__ {int /*<<< orphan*/ * rconn; } ;
typedef  TYPE_1__ remoteConnHashEnt ;
typedef  int /*<<< orphan*/  remoteConn ;

/* Variables and functions */
 int /*<<< orphan*/  HASH_FIND ; 
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 (scalar_t__,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC2 (char const*) ; 
 scalar_t__ remoteConnHash ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static remoteConn *
FUNC5(const char *name)
{
	remoteConnHashEnt *hentry;
	char	   *key;

	if (!remoteConnHash)
		remoteConnHash = FUNC0();

	key = FUNC2(name);
	FUNC4(key, FUNC3(key), false);
	hentry = (remoteConnHashEnt *) FUNC1(remoteConnHash,
											   key, HASH_FIND, NULL);

	if (hentry)
		return hentry->rconn;

	return NULL;
}