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
struct TYPE_4__ {TYPE_1__ buffer; int /*<<< orphan*/  clipboard; } ;

/* Variables and functions */
 TYPE_2__ I ; 
 int /*<<< orphan*/  MAJOR_BREAK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6() {
	int i, len;
	if (I.buffer.index > 0) {
		for (i = I.buffer.index; i > 0 && FUNC1 (I.buffer.data[i], MAJOR_BREAK); i--) {
			/* Move the cursor index back until we hit a non-word-break-character */
		}
		for (; i > 0 && !FUNC1 (I.buffer.data[i], MAJOR_BREAK); i--) {
			/* Move the cursor index back until we hit a word-break-character */
		}
		if (i > 0) {
			i++;
		} else if (i < 0) {
			i = 0;
		}
		if (I.buffer.index > I.buffer.length) {
			I.buffer.length = I.buffer.index;
		}
		len = I.buffer.index - i + 1;
		FUNC0 (I.clipboard);
		I.clipboard = FUNC4 (I.buffer.data + i, len);
		FUNC3 (I.clipboard);
		FUNC2 (I.buffer.data + i, I.buffer.data + I.buffer.index,
				I.buffer.length - I.buffer.index + 1);
		I.buffer.length = FUNC5 (I.buffer.data);
		I.buffer.index = i;
	}
}