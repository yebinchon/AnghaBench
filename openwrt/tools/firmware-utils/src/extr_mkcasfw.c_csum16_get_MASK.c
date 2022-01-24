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
typedef  int uint16_t ;
struct csum_state {int val; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,struct csum_state*) ; 

uint16_t
FUNC1(struct csum_state *css)
{
	char pad = 0;

	FUNC0(&pad, 1, css);
	return ~css->val + 1;
}