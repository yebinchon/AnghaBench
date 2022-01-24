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
struct TYPE_5__ {int /*<<< orphan*/  sock; } ;
typedef  TYPE_1__ Port ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_INTERNAL_ERROR ; 
 int /*<<< orphan*/  FATAL ; 
 int /*<<< orphan*/  SEPGSQL_MODE_DEFAULT ; 
 int /*<<< orphan*/  SEPGSQL_MODE_PERMISSIVE ; 
 int STATUS_OK ; 
 int /*<<< orphan*/  client_label_peer ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int) ; 

__attribute__((used)) static void
FUNC8(Port *port, int status)
{
	if (&next_client_auth_hook)
		FUNC4) (port, status);

	/*
	 * In the case when authentication failed, the supplied socket shall be
	 * closed soon, so we don't need to do anything here.
	 */
	if (status != STATUS_OK)
		return;

	/*
	 * Getting security label of the peer process using API of libselinux.
	 */
	if (FUNC3(port->sock, &client_label_peer) < 0)
		FUNC0(FATAL,
				(FUNC1(ERRCODE_INTERNAL_ERROR),
				 FUNC2("SELinux: unable to get peer label: %m")));

	/*
	 * Switch the current performing mode from INTERNAL to either DEFAULT or
	 * PERMISSIVE.
	 */
	if (FUNC5())
		FUNC6(SEPGSQL_MODE_PERMISSIVE);
	else
		FUNC6(SEPGSQL_MODE_DEFAULT);
}