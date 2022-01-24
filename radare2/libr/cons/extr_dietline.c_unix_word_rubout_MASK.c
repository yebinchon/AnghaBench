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
struct TYPE_3__ {int index; char* data; int length; } ;
struct TYPE_4__ {TYPE_1__ buffer; int /*<<< orphan*/  clipboard; } ;

/* Variables and functions */
 TYPE_2__ I ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int FUNC4 (char*) ; 

__attribute__((used)) static void FUNC5() {
	int i, len;
	if (I.buffer.index > 0) {
		for (i = I.buffer.index - 1; i > 0 && I.buffer.data[i] == ' '; i--) {
			/* Move cursor backwards until we hit a non-space character or EOL */
			/* This removes any trailing spaces from the input */
		}
		for (; i > 0 && I.buffer.data[i] != ' '; i--) {
			/* Move cursor backwards until we hit a space character or EOL */
			/* This deletes everything back to the previous space character */
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
		I.clipboard = FUNC3 (I.buffer.data + i, len);
		FUNC2 (I.clipboard);
		FUNC1 (I.buffer.data + i,
			I.buffer.data + I.buffer.index,
			I.buffer.length - I.buffer.index + 1);
		I.buffer.length = FUNC4 (I.buffer.data);
		I.buffer.index = i;
	}
}