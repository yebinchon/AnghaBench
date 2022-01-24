#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8 ;
struct TYPE_8__ {int /*<<< orphan*/  use_mdcbuf_filter; } ;
typedef  int /*<<< orphan*/  PullFilter ;
typedef  TYPE_1__ PGP_Context ;
typedef  int /*<<< orphan*/  MBuf ;

/* Variables and functions */
 int /*<<< orphan*/  ALLOW_CTX_SIZE ; 
 int NO_MDC ; 
#define  PGP_PKT_COMPRESSED_DATA 130 
#define  PGP_PKT_LITERAL_DATA 129 
#define  PGP_PKT_MDC 128 
 int PKT_CONTEXT ; 
 int PXE_PGP_CORRUPT_DATA ; 
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  mdcbuf_filter ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int,int,TYPE_1__*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int*,int*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 

__attribute__((used)) static int
FUNC8(PGP_Context *ctx, MBuf *dst, PullFilter *src,
					 int allow_compr, int need_mdc)
{
	uint8		tag;
	int			len,
				res;
	int			got_data = 0;
	int			got_mdc = 0;
	PullFilter *pkt = NULL;

	while (1)
	{
		res = FUNC4(src, &tag, &len, ALLOW_CTX_SIZE);
		if (res <= 0)
			break;


		/* mdc packet should be last */
		if (got_mdc)
		{
			FUNC7("process_data_packets: data after mdc");
			res = PXE_PGP_CORRUPT_DATA;
			break;
		}

		/*
		 * Context length inside SYMENCRYPTED_DATA_MDC packet needs special
		 * handling.
		 */
		if (need_mdc && res == PKT_CONTEXT)
			res = FUNC5(&pkt, &mdcbuf_filter, ctx, src);
		else
			res = FUNC3(&pkt, src, len, res, ctx);
		if (res < 0)
			break;

		switch (tag)
		{
			case PGP_PKT_LITERAL_DATA:
				got_data = 1;
				res = FUNC2(ctx, dst, pkt);
				break;
			case PGP_PKT_COMPRESSED_DATA:
				if (allow_compr == 0)
				{
					FUNC7("process_data_packets: unexpected compression");
					res = PXE_PGP_CORRUPT_DATA;
				}
				else if (got_data)
				{
					/*
					 * compr data must be alone
					 */
					FUNC7("process_data_packets: only one cmpr pkt allowed");
					res = PXE_PGP_CORRUPT_DATA;
				}
				else
				{
					got_data = 1;
					res = FUNC1(ctx, dst, pkt);
				}
				break;
			case PGP_PKT_MDC:
				if (need_mdc == NO_MDC)
				{
					FUNC7("process_data_packets: unexpected MDC");
					res = PXE_PGP_CORRUPT_DATA;
					break;
				}

				res = FUNC0(ctx, pkt, len);
				if (res >= 0)
					got_mdc = 1;
				break;
			default:
				FUNC7("process_data_packets: unexpected pkt tag=%d", tag);
				res = PXE_PGP_CORRUPT_DATA;
		}

		FUNC6(pkt);
		pkt = NULL;

		if (res < 0)
			break;
	}

	if (pkt)
		FUNC6(pkt);

	if (res < 0)
		return res;

	if (!got_data)
	{
		FUNC7("process_data_packets: no data");
		res = PXE_PGP_CORRUPT_DATA;
	}
	if (need_mdc && !got_mdc && !ctx->use_mdcbuf_filter)
	{
		FUNC7("process_data_packets: got no mdc");
		res = PXE_PGP_CORRUPT_DATA;
	}
	return res;
}