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
struct TYPE_3__ {scalar_t__ index; scalar_t__ length; char* data; } ;
struct TYPE_4__ {TYPE_1__ buffer; } ;

/* Variables and functions */
 TYPE_2__ I ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char*) ; 
 int FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static inline void FUNC4() {
	if (I.buffer.index < I.buffer.length) {
		if (I.buffer.index > 0) {
			int len = FUNC2 (I.buffer.data + I.buffer.index, I.buffer.index);
			I.buffer.index -= len;
			FUNC0 (I.buffer.data + I.buffer.index,
				I.buffer.data + I.buffer.index + len,
				FUNC3 (I.buffer.data + I.buffer.index));
			I.buffer.length -= len;
		}
	} else {
		I.buffer.length -= FUNC1 (I.buffer.data);
		I.buffer.index = I.buffer.length;
		if (I.buffer.length < 0) {
			I.buffer.length = 0;
		}
	}
	I.buffer.data[I.buffer.length] = '\0';
	if (I.buffer.index < 0) {
		I.buffer.index = 0;
	}
}