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
typedef  int /*<<< orphan*/  uint8 ;
struct MDCBufData {scalar_t__ avail; scalar_t__ pos; scalar_t__ buf; int buflen; int mdc_avail; scalar_t__ mdc_buf; } ;
typedef  int /*<<< orphan*/  PullFilter ;

/* Variables and functions */
 int FUNC0 (struct MDCBufData*) ; 
 int /*<<< orphan*/  FUNC1 (struct MDCBufData*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct MDCBufData*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__,scalar_t__) ; 
 int FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ **) ; 

__attribute__((used)) static int
FUNC5(struct MDCBufData *st, PullFilter *src)
{
	uint8	   *data;
	int			res;
	int			need;

	/* put avail data in start */
	if (st->avail > 0 && st->pos != st->buf)
		FUNC3(st->buf, st->pos, st->avail);
	st->pos = st->buf;

	/* read new data */
	need = st->buflen + 22 - st->avail - st->mdc_avail;
	res = FUNC4(src, need, &data);
	if (res < 0)
		return res;
	if (res == 0)
		return FUNC0(st);

	/* add to buffer */
	if (res >= 22)
	{
		FUNC1(st, st->mdc_buf, st->mdc_avail);
		st->mdc_avail = 0;

		FUNC1(st, data, res - 22);
		FUNC2(st, data + res - 22, 22);
	}
	else
	{
		int			canmove = st->mdc_avail + res - 22;

		if (canmove > 0)
		{
			FUNC1(st, st->mdc_buf, canmove);
			st->mdc_avail -= canmove;
			FUNC3(st->mdc_buf, st->mdc_buf + canmove, st->mdc_avail);
		}
		FUNC2(st, data, res);
	}
	return 0;
}