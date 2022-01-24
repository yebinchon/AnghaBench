#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int kexts_initialized; int /*<<< orphan*/  kexts; } ;
typedef  int /*<<< orphan*/  RList ;
typedef  TYPE_1__ RKernelCacheObj ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(RKernelCacheObj *obj) {
	if (obj->kexts_initialized) {
		return;
	}
	obj->kexts_initialized = true;

	RList *kexts = FUNC1 (obj);

	if (kexts && !FUNC4 (kexts)) {
		FUNC3 (kexts);
		kexts = NULL;
	}

	if (!kexts) {
		kexts = FUNC0 (obj);
	}

	obj->kexts = FUNC2 (kexts);
}