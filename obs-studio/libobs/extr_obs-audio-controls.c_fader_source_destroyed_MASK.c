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
struct obs_fader {int dummy; } ;
typedef  int /*<<< orphan*/  calldata_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct obs_fader*) ; 

__attribute__((used)) static void FUNC2(void *vptr, calldata_t *calldata)
{
	FUNC0(calldata);
	struct obs_fader *fader = (struct obs_fader *)vptr;

	FUNC1(fader);
}