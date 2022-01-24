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
typedef  int /*<<< orphan*/  obs_key_t ;
struct TYPE_3__ {int /*<<< orphan*/  platform_context; } ;
struct TYPE_4__ {TYPE_1__ hotkeys; } ;

/* Variables and functions */
 TYPE_2__* obs ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline bool FUNC1(obs_key_t key)
{
	return FUNC0(obs->hotkeys.platform_context,
					       key);
}