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
struct TYPE_3__ {char* data; int index; int length; } ;
struct TYPE_4__ {TYPE_1__ buffer; scalar_t__ clipboard; } ;

/* Variables and functions */
 TYPE_2__ I ; 
 int enable_yank_pop ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 int FUNC2 (scalar_t__) ; 

__attribute__((used)) static void FUNC3() {
	if (I.clipboard) {
		char *cursor = I.buffer.data + I.buffer.index;
		int dist = (I.buffer.data + I.buffer.length) - cursor;
		int len = FUNC2 (I.clipboard);
		I.buffer.length += len;
		FUNC1 (cursor + len, cursor, dist);
		FUNC0 (cursor, I.clipboard, len);
		I.buffer.index += len;
		enable_yank_pop = true;
	}
}