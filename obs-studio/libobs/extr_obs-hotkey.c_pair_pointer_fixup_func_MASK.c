#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/ * id; } ;
typedef  TYPE_4__ obs_hotkey_pair_t ;
struct TYPE_8__ {TYPE_1__* array; } ;
struct TYPE_9__ {TYPE_2__ hotkeys; } ;
struct TYPE_11__ {TYPE_3__ hotkeys; } ;
struct TYPE_7__ {TYPE_4__* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,size_t*) ; 
 TYPE_6__* obs ; 

__attribute__((used)) static inline bool FUNC2(size_t idx, obs_hotkey_pair_t *pair,
					   void *data)
{
	FUNC0(idx);
	FUNC0(data);

	if (FUNC1(pair->id[0], &idx))
		obs->hotkeys.hotkeys.array[idx].data = pair;

	if (FUNC1(pair->id[1], &idx))
		obs->hotkeys.hotkeys.array[idx].data = pair;

	return true;
}