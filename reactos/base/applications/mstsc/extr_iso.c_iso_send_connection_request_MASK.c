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
typedef  int /*<<< orphan*/  STREAM ;

/* Variables and functions */
 int ISO_PDU_CR ; 
 int RDP_NEG_REQ ; 
 scalar_t__ RDP_V5 ; 
 scalar_t__ g_negotiate_rdp_protocol ; 
 scalar_t__ g_rdp_version ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(char *username, uint32 neg_proto)
{
	STREAM s;
	int length = 30 + FUNC6(username);

	if (g_rdp_version >= RDP_V5 && g_negotiate_rdp_protocol)
		length += 8;

	s = FUNC7(length);

	FUNC3(s, 3);	/* version */
	FUNC3(s, 0);	/* reserved */
	FUNC1(s, length);	/* length */

	FUNC3(s, length - 5);	/* hdrlen */
	FUNC3(s, ISO_PDU_CR);
	FUNC0(s, 0);	/* dst_ref */
	FUNC0(s, 0);	/* src_ref */
	FUNC3(s, 0);	/* class */

	FUNC4(s, "Cookie: mstshash=", FUNC6("Cookie: mstshash="));
	FUNC4(s, username, FUNC6(username));

	FUNC3(s, 0x0d);	/* cookie termination string: CR+LF */
	FUNC3(s, 0x0a);

	if (g_rdp_version >= RDP_V5 && g_negotiate_rdp_protocol)
	{
		/* optional rdp protocol negotiation request for RDPv5 */
		FUNC3(s, RDP_NEG_REQ);
		FUNC3(s, 0);
		FUNC0(s, 8);
		FUNC2(s, neg_proto);
	}

	FUNC5(s);
	FUNC8(s);
}