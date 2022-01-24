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
typedef  int /*<<< orphan*/  uint8 ;
struct ringbuf_t {int dummy; } ;
typedef  TYPE_1__* ringbuf_t ;
struct TYPE_5__ {size_t size; int /*<<< orphan*/ * buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

ringbuf_t FUNC3(size_t capacity)
{
	ringbuf_t rb = (ringbuf_t)FUNC1(sizeof(struct ringbuf_t));
	if (rb){
		rb->size = capacity + 1;
		rb->buf = (uint8*)FUNC1(rb->size);
		if (rb->buf){
			FUNC2(rb);
		}else{
			FUNC0(rb);
			return NULL;
		}
	}
	return rb;
}