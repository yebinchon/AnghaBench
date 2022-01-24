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
struct carc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  carc_cmp ; 
 int /*<<< orphan*/  FUNC0 (struct carc*,size_t,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1(struct carc *first, size_t n)
{
	if (n > 1)
		FUNC0(first, n, sizeof(struct carc), carc_cmp);
}