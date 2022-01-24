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
struct TYPE_4__ {int* b8; } ;
struct TYPE_3__ {int /*<<< orphan*/ * b8; } ;
struct sha1_ctxt {TYPE_2__ c; TYPE_1__ m; } ;

/* Variables and functions */
 int COUNT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct sha1_ctxt*) ; 

void
FUNC3(struct sha1_ctxt *ctxt)
{
	size_t		padlen;			/* pad length in bytes */
	size_t		padstart;

	FUNC0(0x80);

	padstart = COUNT % 64;
	padlen = 64 - padstart;
	if (padlen < 8)
	{
		FUNC1(&ctxt->m.b8[padstart], 0, padlen);
		COUNT += padlen;
		COUNT %= 64;
		FUNC2(ctxt);
		padstart = COUNT % 64;	/* should be 0 */
		padlen = 64 - padstart; /* should be 64 */
	}
	FUNC1(&ctxt->m.b8[padstart], 0, padlen - 8);
	COUNT += (padlen - 8);
	COUNT %= 64;
#ifdef WORDS_BIGENDIAN
	PUTPAD(ctxt->c.b8[0]);
	PUTPAD(ctxt->c.b8[1]);
	PUTPAD(ctxt->c.b8[2]);
	PUTPAD(ctxt->c.b8[3]);
	PUTPAD(ctxt->c.b8[4]);
	PUTPAD(ctxt->c.b8[5]);
	PUTPAD(ctxt->c.b8[6]);
	PUTPAD(ctxt->c.b8[7]);
#else
	FUNC0(ctxt->c.b8[7]);
	FUNC0(ctxt->c.b8[6]);
	FUNC0(ctxt->c.b8[5]);
	FUNC0(ctxt->c.b8[4]);
	FUNC0(ctxt->c.b8[3]);
	FUNC0(ctxt->c.b8[2]);
	FUNC0(ctxt->c.b8[1]);
	FUNC0(ctxt->c.b8[0]);
#endif
}