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
 int RDP_CAPLEN_NEWPOINTER ; 
 int RDP_CAPSET_POINTER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC1(STREAM s)
{
	FUNC0(s, RDP_CAPSET_POINTER);
	FUNC0(s, RDP_CAPLEN_NEWPOINTER);

	FUNC0(s, 1);	/* Colour pointer */
	FUNC0(s, 20);	/* Cache size */
	FUNC0(s, 20);	/* Cache size for new pointers */
}