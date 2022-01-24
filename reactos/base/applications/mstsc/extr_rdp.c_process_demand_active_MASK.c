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
typedef  int /*<<< orphan*/  uint16 ;
typedef  int /*<<< orphan*/  STREAM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  RDP_CTL_COOPERATE ; 
 int /*<<< orphan*/  RDP_CTL_REQUEST_CONTROL ; 
 int /*<<< orphan*/  RDP_INPUT_SYNCHRONIZE ; 
 scalar_t__ RDP_V5 ; 
 scalar_t__ g_numlock_sync ; 
 int /*<<< orphan*/  g_rdp_shareid ; 
 scalar_t__ g_rdp_version ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC15(STREAM s)
{
	uint8 type;
	uint16 len_src_descriptor, len_combined_caps;

	FUNC2(s, g_rdp_shareid);
	FUNC1(s, len_src_descriptor);
	FUNC1(s, len_combined_caps);
	FUNC3(s, len_src_descriptor);

	FUNC0(("DEMAND_ACTIVE(id=0x%x)\n", g_rdp_shareid));
	FUNC5(s, len_combined_caps);

	FUNC7();
	FUNC11();
	FUNC8(RDP_CTL_COOPERATE);
	FUNC8(RDP_CTL_REQUEST_CONTROL);
	FUNC6(&type);	/* RDP_PDU_SYNCHRONIZE */
	FUNC6(&type);	/* RDP_CTL_COOPERATE */
	FUNC6(&type);	/* RDP_CTL_GRANT_CONTROL */
	FUNC10(0, RDP_INPUT_SYNCHRONIZE, 0,
		       g_numlock_sync ? FUNC14(FUNC12()) : 0, 0);

	if (g_rdp_version >= RDP_V5)
	{
		FUNC4();
		FUNC9(3);
	}
	else
	{
		FUNC9(1);
		FUNC9(2);
	}

	FUNC6(&type);	/* RDP_PDU_UNKNOWN 0x28 (Fonts?) */
	FUNC13();
}