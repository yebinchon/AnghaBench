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
typedef  int /*<<< orphan*/  const ut8 ;
typedef  int ut32 ;
struct TYPE_4__ {int length; int /*<<< orphan*/  const* sector; } ;
typedef  TYPE_1__ RASN1Object ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ut32 FUNC2 (const ut8 *buffer, ut32 length) {
	if (!buffer || !length) {
		return 0;
	}
	ut32 counter = 0;
	RASN1Object *object = NULL;
	const ut8 *next = buffer;
	const ut8 *end = buffer + length;
	while (next >= buffer && next < end) {
		// i do not care about the offset now.
		object = FUNC1 (next, end - next, 0);
		if (!object || next == object->sector) {
			FUNC0 (object);
			break;
		}
		next = object->sector + object->length;
		counter++;
		FUNC0 (object);
	}
	FUNC0 (object);
	return counter;
}