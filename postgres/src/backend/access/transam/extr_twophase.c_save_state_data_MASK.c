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
typedef  scalar_t__ uint32 ;
struct TYPE_4__ {int len; scalar_t__ data; struct TYPE_4__* next; } ;
struct TYPE_3__ {scalar_t__ bytes_free; int /*<<< orphan*/  total_len; TYPE_2__* tail; int /*<<< orphan*/  num_chunks; } ;
typedef  int /*<<< orphan*/  StateFileChunk ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,void const*,scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 TYPE_2__* FUNC4 (int) ; 
 TYPE_1__ records ; 

__attribute__((used)) static void
FUNC5(const void *data, uint32 len)
{
	uint32		padlen = FUNC0(len);

	if (padlen > records.bytes_free)
	{
		records.tail->next = FUNC4(sizeof(StateFileChunk));
		records.tail = records.tail->next;
		records.tail->len = 0;
		records.tail->next = NULL;
		records.num_chunks++;

		records.bytes_free = FUNC1(padlen, 512);
		records.tail->data = FUNC3(records.bytes_free);
	}

	FUNC2(((char *) records.tail->data) + records.tail->len, data, len);
	records.tail->len += padlen;
	records.bytes_free -= padlen;
	records.total_len += padlen;
}