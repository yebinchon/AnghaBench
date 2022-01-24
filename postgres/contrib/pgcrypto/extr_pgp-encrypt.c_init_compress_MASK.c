#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8 ;
struct TYPE_5__ {int /*<<< orphan*/  compress_algo; } ;
typedef  int /*<<< orphan*/  PushFilter ;
typedef  TYPE_1__ PGP_Context ;

/* Variables and functions */
 int /*<<< orphan*/  PGP_PKT_COMPRESSED_DATA ; 
 int FUNC0 (int /*<<< orphan*/ **,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pkt_stream_filter ; 
 int FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(PushFilter **pf_res, PGP_Context *ctx, PushFilter *dst)
{
	int			res;
	uint8		type = ctx->compress_algo;
	PushFilter *pkt;

	res = FUNC4(dst, PGP_PKT_COMPRESSED_DATA);
	if (res < 0)
		return res;

	res = FUNC1(&pkt, &pkt_stream_filter, ctx, dst);
	if (res < 0)
		return res;

	res = FUNC3(pkt, &type, 1);
	if (res >= 0)
		res = FUNC0(pf_res, ctx, pkt);

	if (res < 0)
		FUNC2(pkt);

	return res;
}