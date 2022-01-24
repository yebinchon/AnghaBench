#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {struct TYPE_4__* odata; struct TYPE_4__* data; } ;
typedef  TYPE_1__ RIOCache ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC1(RIOCache *cache) {
	if (!cache) {
		return;
	}
	FUNC0 (cache->data);
	FUNC0 (cache->odata);
	FUNC0 (cache);
}