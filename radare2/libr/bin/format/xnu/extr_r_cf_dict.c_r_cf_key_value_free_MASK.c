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
struct TYPE_4__ {int /*<<< orphan*/ * value; struct TYPE_4__* key; } ;
typedef  TYPE_1__ RCFKeyValue ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(RCFKeyValue *key_value) {
	if (!key_value) {
		return;
	}

	if (key_value->key) {
		FUNC0 (key_value->key);
	}
	if (key_value->value) {
		FUNC1 (key_value->value);
		key_value->value = NULL;
	}

	FUNC0 (key_value);
}