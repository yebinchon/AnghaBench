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
typedef  int uint8 ;
typedef  int uint32 ;
struct TYPE_4__ {scalar_t__ unicode_mode; scalar_t__ text_mode; } ;
typedef  int /*<<< orphan*/  PushFilter ;
typedef  TYPE_1__ PGP_Context ;

/* Variables and functions */
 int /*<<< orphan*/  PGP_PKT_LITERAL_DATA ; 
 int /*<<< orphan*/  pkt_stream_filter ; 
 int FUNC0 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(PushFilter **pf_res, PGP_Context *ctx, PushFilter *dst)
{
	int			res;
	int			hdrlen;
	uint8		hdr[6];
	uint32		t;
	PushFilter *pkt;
	int			type;

	/*
	 * Create header
	 */

	if (ctx->text_mode)
		type = ctx->unicode_mode ? 'u' : 't';
	else
		type = 'b';

	/*
	 * Store the creation time into packet. The goal is to have as few known
	 * bytes as possible.
	 */
	t = (uint32) FUNC3(NULL);

	hdr[0] = type;
	hdr[1] = 0;
	hdr[2] = (t >> 24) & 255;
	hdr[3] = (t >> 16) & 255;
	hdr[4] = (t >> 8) & 255;
	hdr[5] = t & 255;
	hdrlen = 6;

	res = FUNC4(dst, PGP_PKT_LITERAL_DATA);
	if (res < 0)
		return res;

	res = FUNC0(&pkt, &pkt_stream_filter, ctx, dst);
	if (res < 0)
		return res;

	res = FUNC2(pkt, hdr, hdrlen);
	if (res < 0)
	{
		FUNC1(pkt);
		return res;
	}

	*pf_res = pkt;
	return 0;
}