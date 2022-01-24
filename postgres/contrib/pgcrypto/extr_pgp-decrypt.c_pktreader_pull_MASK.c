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
struct PktData {int type; int len; } ;
typedef  int /*<<< orphan*/  PullFilter ;

/* Variables and functions */
 int PKT_CONTEXT ; 
 int PKT_NORMAL ; 
 int FUNC0 (int /*<<< orphan*/ *,int*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ **) ; 

__attribute__((used)) static int
FUNC2(void *priv, PullFilter *src, int len,
			   uint8 **data_p, uint8 *buf, int buflen)
{
	int			res;
	struct PktData *pkt = priv;

	/* PKT_CONTEXT means: whatever there is */
	if (pkt->type == PKT_CONTEXT)
		return FUNC1(src, len, data_p);

	while (pkt->len == 0)
	{
		/* this was last chunk in stream */
		if (pkt->type == PKT_NORMAL)
			return 0;

		/* next chunk in stream */
		res = FUNC0(src, &pkt->len);
		if (res < 0)
			return res;
		pkt->type = res;
	}

	if (len > pkt->len)
		len = pkt->len;

	res = FUNC1(src, len, data_p);
	if (res > 0)
		pkt->len -= res;

	return res;
}