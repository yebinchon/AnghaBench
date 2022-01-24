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
struct TYPE_3__ {int index; int length; int /*<<< orphan*/ * data; } ;
struct TYPE_4__ {TYPE_1__ buffer; } ;

/* Variables and functions */
 TYPE_2__ I ; 
 int /*<<< orphan*/  MAJOR_BREAK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC1() {
	int i;
	for (i = I.buffer.index + 1; i < I.buffer.length; i++) {
		if ((!FUNC0 (I.buffer.data[i], MAJOR_BREAK)
		 && FUNC0 (I.buffer.data[i-1], MAJOR_BREAK))) {
			I.buffer.index = i;
			break;
		}
	}
	if (i >= I.buffer.length) {
		I.buffer.index = I.buffer.length - 1;
	}
}