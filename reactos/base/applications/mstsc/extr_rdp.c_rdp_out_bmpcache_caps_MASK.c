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
 int RDP_CAPLEN_BMPCACHE ; 
 int RDP_CAPSET_BMPCACHE ; 
 int g_server_depth ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC2(STREAM s)
{
	int Bpp;
	FUNC0(s, RDP_CAPSET_BMPCACHE);
	FUNC0(s, RDP_CAPLEN_BMPCACHE);

	Bpp = (g_server_depth + 7) / 8;	/* bytes per pixel */
	FUNC1(s, 24);	/* unused */
	FUNC0(s, 0x258);	/* entries */
	FUNC0(s, 0x100 * Bpp);	/* max cell size */
	FUNC0(s, 0x12c);	/* entries */
	FUNC0(s, 0x400 * Bpp);	/* max cell size */
	FUNC0(s, 0x106);	/* entries */
	FUNC0(s, 0x1000 * Bpp);	/* max cell size */
}