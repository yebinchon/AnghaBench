#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xcb_connection_t ;
struct TYPE_2__ {int /*<<< orphan*/  present; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_ERROR ; 
 int /*<<< orphan*/  LOG_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  xcb_randr_id ; 
 int /*<<< orphan*/  xcb_shm_id ; 
 int /*<<< orphan*/  xcb_xinerama_id ; 

__attribute__((used)) static bool FUNC2(xcb_connection_t *xcb)
{
	bool ok = true;

	if (!FUNC1(xcb, &xcb_shm_id)->present) {
		FUNC0(LOG_ERROR, "Missing SHM extension !");
		ok = false;
	}

	if (!FUNC1(xcb, &xcb_xinerama_id)->present)
		FUNC0(LOG_INFO, "Missing Xinerama extension !");

	if (!FUNC1(xcb, &xcb_randr_id)->present)
		FUNC0(LOG_INFO, "Missing Randr extension !");

	return ok;
}