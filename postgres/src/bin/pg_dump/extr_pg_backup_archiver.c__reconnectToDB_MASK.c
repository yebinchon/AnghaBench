#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/ * currTablespace; int /*<<< orphan*/ * currSchema; int /*<<< orphan*/ * currUser; } ;
struct TYPE_11__ {char* data; } ;
typedef  TYPE_1__ PQExpBufferData ;
typedef  TYPE_2__ ArchiveHandle ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC8(ArchiveHandle *AH, const char *dbname)
{
	if (FUNC1(AH))
		FUNC0(AH, dbname, NULL);
	else
	{
		if (dbname)
		{
			PQExpBufferData connectbuf;

			FUNC6(&connectbuf);
			FUNC4(&connectbuf, dbname);
			FUNC3(AH, "%s\n", connectbuf.data);
			FUNC7(&connectbuf);
		}
		else
			FUNC3(AH, "%s\n", "\\connect -\n");
	}

	/*
	 * NOTE: currUser keeps track of what the imaginary session user in our
	 * script is.  It's now effectively reset to the original userID.
	 */
	if (AH->currUser)
		FUNC5(AH->currUser);
	AH->currUser = NULL;

	/* don't assume we still know the output schema, tablespace, etc either */
	if (AH->currSchema)
		FUNC5(AH->currSchema);
	AH->currSchema = NULL;
	if (AH->currTablespace)
		FUNC5(AH->currTablespace);
	AH->currTablespace = NULL;

	/* re-establish fixed state */
	FUNC2(AH);
}