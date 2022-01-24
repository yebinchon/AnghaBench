#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8 ;
struct TYPE_4__ {int no_write; int /*<<< orphan*/ * read_pos; } ;
typedef  TYPE_1__ MBuf ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 

int
FUNC1(MBuf *mbuf, int len, uint8 **data_p)
{
	if (len > FUNC0(mbuf))
		len = FUNC0(mbuf);

	mbuf->no_write = true;

	*data_p = mbuf->read_pos;
	mbuf->read_pos += len;
	return len;
}