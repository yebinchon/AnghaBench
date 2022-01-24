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
struct TYPE_3__ {scalar_t__ index; scalar_t__ length; scalar_t__ data; } ;
struct TYPE_4__ {TYPE_1__ buffer; } ;

/* Variables and functions */
 TYPE_2__ I ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 

__attribute__((used)) static inline void FUNC3() {
	if (I.buffer.index < I.buffer.length) {
		int len = FUNC1 (I.buffer.data + I.buffer.index);
		FUNC0 (I.buffer.data + I.buffer.index,
			I.buffer.data + I.buffer.index + len,
			FUNC2 (I.buffer.data + I.buffer.index + 1) + 1);
		I.buffer.length -= len;
	}
}