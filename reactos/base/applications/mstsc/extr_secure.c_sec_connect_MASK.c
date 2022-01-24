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
typedef  int /*<<< orphan*/  uint8 ;
typedef  int /*<<< orphan*/  uint32 ;
struct stream {int size; int /*<<< orphan*/ * data; int /*<<< orphan*/ * p; } ;
typedef  int /*<<< orphan*/  RD_BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  False ; 
 int /*<<< orphan*/  True ; 
 scalar_t__ g_encryption ; 
 int /*<<< orphan*/  FUNC0 (struct stream*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct stream*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int) ; 

RD_BOOL
FUNC6(char *server, char *username, char *domain, char *password, RD_BOOL reconnect)
{
	uint32 selected_proto;
	struct stream mcs_data;

	/* Start a MCS connect sequence */
	if (!FUNC1(server, username, domain, password, reconnect, &selected_proto))
		return False;

	/* We exchange some RDP data during the MCS-Connect */
	mcs_data.size = 512;
	mcs_data.p = mcs_data.data = (uint8 *) FUNC5(mcs_data.size);
	FUNC3(&mcs_data, selected_proto);

	/* finalize the MCS connect sequence */
	if (!FUNC0(&mcs_data))
		return False;

	/* sec_process_mcs_data(&mcs_data); */
	if (g_encryption)
		FUNC2();
	FUNC4(mcs_data.data);
	return True;
}