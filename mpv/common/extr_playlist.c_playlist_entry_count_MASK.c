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
struct playlist {int /*<<< orphan*/  last; } ;

/* Variables and functions */
 int FUNC0 (struct playlist*,int /*<<< orphan*/ ) ; 

int FUNC1(struct playlist *pl)
{
    return FUNC0(pl, pl->last) + 1;
}