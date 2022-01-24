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
typedef  int /*<<< orphan*/  STREAM ;

/* Variables and functions */
 int RDP_CAPLEN_BITMAP ; 
 int RDP_CAPSET_BITMAP ; 
 scalar_t__ g_bitmap_compression ; 
 int g_server_depth ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC2(STREAM s)
{
	FUNC1(s, RDP_CAPSET_BITMAP);
	FUNC1(s, RDP_CAPLEN_BITMAP);

	FUNC1(s, g_server_depth);	/* Preferred colour depth */
	FUNC1(s, 1);	/* Receive 1 BPP */
	FUNC1(s, 1);	/* Receive 4 BPP */
	FUNC1(s, 1);	/* Receive 8 BPP */
	FUNC1(s, 800);	/* Desktop width */
	FUNC1(s, 600);	/* Desktop height */
	FUNC0(s, 0);	/* Pad */
	FUNC0(s, 1);	/* Allow resize */
	FUNC1(s, g_bitmap_compression ? 1 : 0);	/* Support compression */
	FUNC0(s, 0);	/* Unknown */
	FUNC1(s, 1);	/* Unknown */
	FUNC0(s, 0);	/* Pad */
}