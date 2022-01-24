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
struct TYPE_4__ {int len; char* data; } ;
typedef  TYPE_1__* StringInfo ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (TYPE_1__*,int) ; 

__attribute__((used)) static short
FUNC2(StringInfo buffer)
{
	int			padlen,
				p,
				offset;

	padlen = FUNC0(buffer->len) - buffer->len;

	offset = FUNC1(buffer, padlen);

	/* padlen must be small, so this is probably faster than a memset */
	for (p = 0; p < padlen; p++)
		buffer->data[offset + p] = '\0';

	return padlen;
}