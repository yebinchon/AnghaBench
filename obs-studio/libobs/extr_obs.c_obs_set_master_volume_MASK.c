#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct calldata {int /*<<< orphan*/  member_0; } ;
struct TYPE_3__ {float user_volume; } ;
struct TYPE_4__ {TYPE_1__ audio; int /*<<< orphan*/  signals; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct calldata*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct calldata*) ; 
 int /*<<< orphan*/  FUNC2 (struct calldata*,char*,float) ; 
 TYPE_2__* obs ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,struct calldata*) ; 

void FUNC4(float volume)
{
	struct calldata data = {0};

	if (!obs)
		return;

	FUNC2(&data, "volume", volume);
	FUNC3(obs->signals, "master_volume", &data);
	volume = (float)FUNC0(&data, "volume");
	FUNC1(&data);

	obs->audio.user_volume = volume;
}