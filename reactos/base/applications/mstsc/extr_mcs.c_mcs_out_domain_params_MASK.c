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
 int /*<<< orphan*/  MCS_TAG_DOMAIN_PARAMS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC2(STREAM s, int max_channels, int max_users, int max_tokens, int max_pdusize)
{
	FUNC0(s, MCS_TAG_DOMAIN_PARAMS, 32);
	FUNC1(s, max_channels);
	FUNC1(s, max_users);
	FUNC1(s, max_tokens);
	FUNC1(s, 1);	/* num_priorities */
	FUNC1(s, 0);	/* min_throughput */
	FUNC1(s, 1);	/* max_height */
	FUNC1(s, max_pdusize);
	FUNC1(s, 2);	/* ver_protocol */
}