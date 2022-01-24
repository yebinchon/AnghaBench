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
typedef  size_t obs_key_t ;
struct TYPE_3__ {int /*<<< orphan*/ ** translations; } ;
struct TYPE_4__ {TYPE_1__ hotkeys; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*) ; 
 TYPE_2__* obs ; 

__attribute__((used)) static void FUNC2(obs_key_t key, const char *translation)
{
	FUNC0(obs->hotkeys.translations[key]);
	obs->hotkeys.translations[key] = NULL;

	if (translation)
		obs->hotkeys.translations[key] = FUNC1(translation);
}