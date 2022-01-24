#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  name; TYPE_2__* rconn; } ;
typedef  TYPE_1__ remoteConnHashEnt ;
struct TYPE_6__ {int /*<<< orphan*/  conn; } ;
typedef  TYPE_2__ remoteConn ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_DUPLICATE_OBJECT ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  HASH_ENTER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (scalar_t__,char*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 char* FUNC7 (char const*) ; 
 scalar_t__ remoteConnHash ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC11(const char *name, remoteConn *rconn)
{
	remoteConnHashEnt *hentry;
	bool		found;
	char	   *key;

	if (!remoteConnHash)
		remoteConnHash = FUNC1();

	key = FUNC7(name);
	FUNC10(key, FUNC9(key), true);
	hentry = (remoteConnHashEnt *) FUNC5(remoteConnHash, key,
											   HASH_ENTER, &found);

	if (found)
	{
		FUNC0(rconn->conn);
		FUNC6(rconn);

		FUNC2(ERROR,
				(FUNC3(ERRCODE_DUPLICATE_OBJECT),
				 FUNC4("duplicate connection name")));
	}

	hentry->rconn = rconn;
	FUNC8(hentry->name, name, sizeof(hentry->name));
}