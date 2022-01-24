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
typedef  int /*<<< orphan*/  RD_BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  False ; 
 int /*<<< orphan*/  True ; 
 scalar_t__ g_network_error ; 
 int /*<<< orphan*/  g_rdp_shareid ; 
 scalar_t__ g_redirect ; 
 int /*<<< orphan*/  g_username ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ) ; 

RD_BOOL
FUNC3(char *server, uint32 flags, char *domain, char *password,
	    char *command, char *directory, RD_BOOL reconnect)
{
	RD_BOOL deactivated = False;
	uint32 ext_disc_reason = 0;

	if (!FUNC2(server, g_username, domain, password, reconnect))
		return False;

	FUNC1(flags, domain, g_username, password, command, directory);

	/* run RDP loop until first licence demand active PDU */
	while (!g_rdp_shareid)
	{
		if (g_network_error)
			return False;

		if (!FUNC0(&deactivated, &ext_disc_reason))
			return False;

		if (g_redirect)
			return True;
	}
	return True;
}