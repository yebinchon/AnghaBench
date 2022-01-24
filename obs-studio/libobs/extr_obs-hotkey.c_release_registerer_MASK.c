#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int registerer_type; int /*<<< orphan*/ * registerer; } ;
typedef  TYPE_1__ obs_hotkey_t ;

/* Variables and functions */
#define  OBS_HOTKEY_REGISTERER_ENCODER 132 
#define  OBS_HOTKEY_REGISTERER_FRONTEND 131 
#define  OBS_HOTKEY_REGISTERER_OUTPUT 130 
#define  OBS_HOTKEY_REGISTERER_SERVICE 129 
#define  OBS_HOTKEY_REGISTERER_SOURCE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(obs_hotkey_t *hotkey)
{
	switch (hotkey->registerer_type) {
	case OBS_HOTKEY_REGISTERER_FRONTEND:
		break;

	case OBS_HOTKEY_REGISTERER_ENCODER:
		FUNC0(hotkey->registerer);
		break;

	case OBS_HOTKEY_REGISTERER_OUTPUT:
		FUNC1(hotkey->registerer);
		break;

	case OBS_HOTKEY_REGISTERER_SERVICE:
		FUNC2(hotkey->registerer);
		break;

	case OBS_HOTKEY_REGISTERER_SOURCE:
		FUNC3(hotkey->registerer);
		break;
	}

	hotkey->registerer = NULL;
}