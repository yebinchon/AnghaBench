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
struct TYPE_4__ {scalar_t__ block_size; int pos; int /*<<< orphan*/  const* buf; } ;
typedef  TYPE_1__ PushFilter ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/  const*,int) ; 

int
FUNC2(PushFilter *mp, const uint8 *data, int len)
{
	int			need,
				res;

	/*
	 * no buffering
	 */
	if (mp->block_size <= 0)
		return FUNC1(mp, data, len);

	/*
	 * try to empty buffer
	 */
	need = mp->block_size - mp->pos;
	if (need > 0)
	{
		if (len < need)
		{
			FUNC0(mp->buf + mp->pos, data, len);
			mp->pos += len;
			return 0;
		}
		FUNC0(mp->buf + mp->pos, data, need);
		len -= need;
		data += need;
	}

	/*
	 * buffer full, process
	 */
	res = FUNC1(mp, mp->buf, mp->block_size);
	if (res < 0)
		return res;
	mp->pos = 0;

	/*
	 * now process directly from data
	 */
	while (len > 0)
	{
		if (len > mp->block_size)
		{
			res = FUNC1(mp, data, mp->block_size);
			if (res < 0)
				return res;
			data += mp->block_size;
			len -= mp->block_size;
		}
		else
		{
			FUNC0(mp->buf, data, len);
			mp->pos += len;
			break;
		}
	}
	return 0;
}