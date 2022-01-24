#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct trace_entry {int length; } ;
struct trace_buffer {void* tail; void* data; scalar_t__ overflow; int /*<<< orphan*/  size; } ;

/* Variables and functions */
 int BASE_PREFIX ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ FUNC1 (struct trace_buffer*,void*) ; 
 int /*<<< orphan*/  FUNC2 (struct trace_entry*,int,int*) ; 

void FUNC3(struct trace_buffer *tb)
{
	struct trace_entry *e;
	int i, prefix;
	void *p;

	FUNC0("Trace buffer dump:\n");
	FUNC0("  address  %p \n", tb);
	FUNC0("  tail     %p\n", tb->tail);
	FUNC0("  size     %llu\n", tb->size);
	FUNC0("  overflow %s\n", tb->overflow ? "TRUE" : "false");
	FUNC0("  Content:\n");

	p = tb->data;

	i = 0;
	prefix = BASE_PREFIX;

	while (FUNC1(tb, p) && p < tb->tail) {
		e = p;

		FUNC2(e, i, &prefix);

		i++;
		p = (void *)e + sizeof(*e) + e->length;
	}
}