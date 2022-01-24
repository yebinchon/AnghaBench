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
typedef  int uint8 ;
struct TYPE_5__ {int compress_algo; int unsupported_compr; } ;
typedef  int /*<<< orphan*/  PullFilter ;
typedef  TYPE_1__ PGP_Context ;
typedef  int /*<<< orphan*/  MBuf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  NO_COMPR ; 
 int /*<<< orphan*/  NO_MDC ; 
#define  PGP_COMPR_BZIP2 131 
#define  PGP_COMPR_NONE 130 
#define  PGP_COMPR_ZIP 129 
#define  PGP_COMPR_ZLIB 128 
 int PXE_PGP_CORRUPT_DATA ; 
 int FUNC1 (int /*<<< orphan*/ **,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int,int**) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static int
FUNC6(PGP_Context *ctx, MBuf *dst, PullFilter *pkt)
{
	int			res;
	uint8		type;
	PullFilter *pf_decompr;
	uint8	   *discard_buf;

	FUNC0(pkt, type);

	ctx->compress_algo = type;
	switch (type)
	{
		case PGP_COMPR_NONE:
			res = FUNC2(ctx, dst, pkt, NO_COMPR, NO_MDC);
			break;

		case PGP_COMPR_ZIP:
		case PGP_COMPR_ZLIB:
			res = FUNC1(&pf_decompr, ctx, pkt);
			if (res >= 0)
			{
				res = FUNC2(ctx, dst, pf_decompr,
										   NO_COMPR, NO_MDC);
				FUNC3(pf_decompr);
			}
			break;

		case PGP_COMPR_BZIP2:
			FUNC5("parse_compressed_data: bzip2 unsupported");
			/* report error in pgp_decrypt() */
			ctx->unsupported_compr = 1;

			/*
			 * Discard the compressed data, allowing it to first affect any
			 * MDC digest computation.
			 */
			while (1)
			{
				res = FUNC4(pkt, 32 * 1024, &discard_buf);
				if (res <= 0)
					break;
			}

			break;

		default:
			FUNC5("parse_compressed_data: unknown compr type");
			res = PXE_PGP_CORRUPT_DATA;
	}

	return res;
}