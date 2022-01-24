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
 int /*<<< orphan*/  SEC_ENCRYPT ; 
 scalar_t__ g_encryption ; 
 int /*<<< orphan*/  rdp_hdr ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static STREAM
FUNC2(int maxlen)
{
	STREAM s;

	s = FUNC1(g_encryption ? SEC_ENCRYPT : 0, maxlen + 18);
	FUNC0(s, rdp_hdr, 18);

	return s;
}