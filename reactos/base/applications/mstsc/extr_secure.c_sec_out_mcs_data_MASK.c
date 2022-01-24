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
typedef  int uint32 ;
struct TYPE_2__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  STREAM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ RDP_V5 ; 
 int SEC_CC_REDIRECTION_SUPPORTED ; 
 int SEC_CC_REDIRECT_SESSIONID_FIELD_VALID ; 
 int SEC_CC_REDIRECT_VERSION_3 ; 
 int SEC_TAG_CLI_CHANNELS ; 
 int SEC_TAG_CLI_CLUSTER ; 
 int SEC_TAG_CLI_CRYPT ; 
 int SEC_TAG_CLI_INFO ; 
 TYPE_1__* g_channels ; 
 scalar_t__ g_console_session ; 
 scalar_t__ g_encryption ; 
 int g_height ; 
 int /*<<< orphan*/  g_hostname ; 
 int g_keyboard_functionkeys ; 
 int g_keyboard_subtype ; 
 int g_keyboard_type ; 
 int g_keylayout ; 
 int g_num_channels ; 
 scalar_t__ g_rdp_version ; 
 scalar_t__ g_redirect_session_id ; 
 int g_server_depth ; 
 int g_width ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC12(STREAM s, uint32 selected_protocol)
{
	int hostlen = 2 * FUNC11(g_hostname);
	int length = 162 + 76 + 12 + 4;
	unsigned int i;
	uint32 cluster_flags = 0;

	if (g_num_channels > 0)
		length += g_num_channels * 12 + 8;

	if (hostlen > 30)
		hostlen = 30;

	/* Generic Conference Control (T.124) ConferenceCreateRequest */
	FUNC1(s, 5);
	FUNC1(s, 0x14);
	FUNC6(s, 0x7c);
	FUNC1(s, 1);

	FUNC1(s, (length | 0x8000));	/* remaining length */

	FUNC1(s, 8);	/* length? */
	FUNC1(s, 16);
	FUNC6(s, 0);
	FUNC2(s, 0xc001);
	FUNC6(s, 0);

	FUNC5(s, 0x61637544);	/* OEM ID: "Duca", as in Ducati. */
	FUNC1(s, ((length - 14) | 0x8000));	/* remaining length */

	/* Client information */
	FUNC2(s, SEC_TAG_CLI_INFO);
	FUNC2(s, 216);	/* length */
	FUNC2(s, (g_rdp_version >= RDP_V5) ? 4 : 1);	/* RDP version. 1 == RDP4, 4 >= RDP5 to RDP8 */
	FUNC2(s, 8);
	FUNC2(s, g_width);
	FUNC2(s, g_height);
	FUNC2(s, 0xca01);
	FUNC2(s, 0xaa03);
	FUNC5(s, g_keylayout);
	FUNC5(s, 2600);	/* Client build. We are now 2600 compatible :-) */

	/* Unicode name of client, padded to 32 bytes */
	FUNC9(s, g_hostname, hostlen);
	FUNC8(s, 30 - hostlen);

	/* See
	   http://msdn.microsoft.com/library/default.asp?url=/library/en-us/wceddk40/html/cxtsksupportingremotedesktopprotocol.asp */
	FUNC5(s, g_keyboard_type);
	FUNC5(s, g_keyboard_subtype);
	FUNC5(s, g_keyboard_functionkeys);
	FUNC8(s, 64);	/* reserved? 4 + 12 doublewords */
	FUNC2(s, 0xca01);	/* colour depth? */
	FUNC2(s, 1);

	FUNC3(s, 0);
	FUNC6(s, g_server_depth);
	FUNC2(s, 0x0700);
	FUNC6(s, 0);
	FUNC5(s, 1);
	FUNC8(s, 64);
	FUNC5(s, selected_protocol);	/* End of client info */

	/* Write a Client Cluster Data (TS_UD_CS_CLUSTER) */
	FUNC2(s, SEC_TAG_CLI_CLUSTER);	/* header.type */
	FUNC2(s, 12);	/* length */

	cluster_flags |= SEC_CC_REDIRECTION_SUPPORTED;
	cluster_flags |= (SEC_CC_REDIRECT_VERSION_3 << 2);

	if (g_console_session || g_redirect_session_id != 0)
		cluster_flags |= SEC_CC_REDIRECT_SESSIONID_FIELD_VALID;

	FUNC5(s, cluster_flags);
	FUNC3(s, g_redirect_session_id);

	/* Client encryption settings */
	FUNC2(s, SEC_TAG_CLI_CRYPT);
	FUNC2(s, 12);	/* length */
	FUNC5(s, g_encryption ? 0x3 : 0);	/* encryption supported, 128-bit supported */
	FUNC3(s, 0);	/* Unknown */

	FUNC0(("g_num_channels is %d\n", g_num_channels));
	if (g_num_channels > 0)
	{
		FUNC2(s, SEC_TAG_CLI_CHANNELS);
		FUNC2(s, g_num_channels * 12 + 8);	/* length */
		FUNC5(s, g_num_channels);	/* number of virtual channels */
		for (i = 0; i < g_num_channels; i++)
		{
			FUNC0(("Requesting channel %s\n", g_channels[i].name));
			FUNC7(s, g_channels[i].name, 8);
			FUNC4(s, g_channels[i].flags);
		}
	}

	FUNC10(s);
}