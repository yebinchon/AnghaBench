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
typedef  int /*<<< orphan*/ * sdlRestrictionIntPtr ;
typedef  int /*<<< orphan*/  sdlRestrictionInt ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int) ; 

__attribute__((used)) static void FUNC1(void *data)
{
	sdlRestrictionIntPtr *rest = (sdlRestrictionIntPtr *)data;
	sdlRestrictionIntPtr prest = NULL;

	prest = FUNC0(sizeof(sdlRestrictionInt));
	*prest = **rest;
	*rest = prest;
}