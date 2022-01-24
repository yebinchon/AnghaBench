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
struct PktData {int type; int len; } ;
typedef  int /*<<< orphan*/  PullFilter ;
typedef  int /*<<< orphan*/  PGP_Context ;

/* Variables and functions */
 int /*<<< orphan*/  pktreader_filter ; 
 int FUNC0 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,struct PktData*,int /*<<< orphan*/ *) ; 
 struct PktData* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct PktData*) ; 

int
FUNC3(PullFilter **pf_p, PullFilter *src, int len,
					  int pkttype, PGP_Context *ctx)
{
	int			res;
	struct PktData *pkt = FUNC1(sizeof(*pkt));

	pkt->type = pkttype;
	pkt->len = len;
	res = FUNC0(pf_p, &pktreader_filter, pkt, src);
	if (res < 0)
		FUNC2(pkt);
	return res;
}