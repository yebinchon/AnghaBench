#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  void* uint8_t ;
struct TYPE_2__ {void** buf_end; void** buf_ptr; } ;

/* Variables and functions */
 void* ch ; 
 TYPE_1__* file ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static int FUNC2(uint8_t *p)
{
	int c;

	if (p >= file->buf_end) {
		file->buf_ptr = p;
		c = FUNC0 ();
		p = file->buf_ptr;
		if (c == '\\') {
			goto parse_stray;
		}
	} else {
parse_stray:
		file->buf_ptr = p;
		ch = *p;
		FUNC1 ();
		p = file->buf_ptr;
		c = *p;
	}
	return c;
}