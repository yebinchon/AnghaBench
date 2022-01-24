#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  formats; scalar_t__ tupDesc; } ;
typedef  TYPE_1__* Portal ;

/* Variables and functions */
 scalar_t__ DestRemote ; 
 int /*<<< orphan*/  ERRCODE_IN_FAILED_SQL_TRANSACTION ; 
 int /*<<< orphan*/  ERRCODE_UNDEFINED_CURSOR ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 (char const*) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MessageContext ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 int /*<<< orphan*/  FUNC10 (char) ; 
 int /*<<< orphan*/  row_description_buf ; 
 int /*<<< orphan*/  FUNC11 () ; 
 scalar_t__ whereToSendOutput ; 

__attribute__((used)) static void
FUNC12(const char *portal_name)
{
	Portal		portal;

	/*
	 * Start up a transaction command. (Note that this will normally change
	 * current memory context.) Nothing happens if we are already in one.
	 */
	FUNC11();

	/* Switch back to message context */
	FUNC3(MessageContext);

	portal = FUNC1(portal_name);
	if (!FUNC4(portal))
		FUNC6(ERROR,
				(FUNC7(ERRCODE_UNDEFINED_CURSOR),
				 FUNC9("portal \"%s\" does not exist", portal_name)));

	/*
	 * If we are in aborted transaction state, we can't run
	 * SendRowDescriptionMessage(), because that needs catalog accesses.
	 * Hence, refuse to Describe portals that return data.  (We shouldn't just
	 * refuse all Describes, since that might break the ability of some
	 * clients to issue COMMIT or ROLLBACK commands, if they use code that
	 * blindly Describes whatever it does.)
	 */
	if (FUNC2() &&
		portal->tupDesc)
		FUNC6(ERROR,
				(FUNC7(ERRCODE_IN_FAILED_SQL_TRANSACTION),
				 FUNC9("current transaction is aborted, "
						"commands ignored until end of transaction block"),
				 FUNC8()));

	if (whereToSendOutput != DestRemote)
		return;					/* can't actually do anything... */

	if (portal->tupDesc)
		FUNC5(&row_description_buf,
								  portal->tupDesc,
								  FUNC0(portal),
								  portal->formats);
	else
		FUNC10('n');	/* NoData */
}