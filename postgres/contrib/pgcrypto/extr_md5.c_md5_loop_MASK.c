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
struct TYPE_4__ {unsigned int md5_n; unsigned int md5_i; int /*<<< orphan*/  const* md5_buf; } ;
typedef  TYPE_1__ md5_ctxt ;

/* Variables and functions */
 unsigned int MD5_BUFLEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,unsigned int) ; 

void
FUNC2(md5_ctxt *ctxt, const uint8 *input, unsigned len)
{
	unsigned int gap,
				i;

	ctxt->md5_n += len * 8;		/* byte to bit */
	gap = MD5_BUFLEN - ctxt->md5_i;

	if (len >= gap)
	{
		FUNC1(ctxt->md5_buf + ctxt->md5_i, input, gap);
		FUNC0(ctxt->md5_buf, ctxt);

		for (i = gap; i + MD5_BUFLEN <= len; i += MD5_BUFLEN)
			FUNC0(input + i, ctxt);

		ctxt->md5_i = len - i;
		FUNC1(ctxt->md5_buf, input + i, ctxt->md5_i);
	}
	else
	{
		FUNC1(ctxt->md5_buf + ctxt->md5_i, input, len);
		ctxt->md5_i += len;
	}
}