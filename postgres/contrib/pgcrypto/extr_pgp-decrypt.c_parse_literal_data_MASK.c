#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  const uint8 ;
struct TYPE_3__ {int unexpected_binary; int unicode_mode; scalar_t__ convert_crlf; scalar_t__ text_mode; } ;
typedef  int /*<<< orphan*/  PullFilter ;
typedef  TYPE_1__ PGP_Context ;
typedef  int /*<<< orphan*/  MBuf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int PXE_PGP_CORRUPT_DATA ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int,int*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/  const**) ; 
 int FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/  const**,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC7(PGP_Context *ctx, MBuf *dst, PullFilter *pkt)
{
	int			type;
	int			name_len;
	int			res;
	uint8	   *buf;
	uint8		tmpbuf[4];
	int			got_cr = 0;

	FUNC0(pkt, type);
	FUNC0(pkt, name_len);

	/* skip name */
	while (name_len > 0)
	{
		res = FUNC3(pkt, name_len, &buf);
		if (res < 0)
			return res;
		if (res == 0)
			break;
		name_len -= res;
	}
	if (name_len > 0)
	{
		FUNC5("parse_literal_data: unexpected eof");
		return PXE_PGP_CORRUPT_DATA;
	}

	/* skip date */
	res = FUNC4(pkt, 4, &buf, tmpbuf);
	if (res != 4)
	{
		FUNC5("parse_literal_data: unexpected eof");
		return PXE_PGP_CORRUPT_DATA;
	}
	FUNC6(tmpbuf, 0, 4);

	/*
	 * If called from an SQL function that returns text, pgp_decrypt() rejects
	 * inputs not self-identifying as text.
	 */
	if (ctx->text_mode)
		if (type != 't' && type != 'u')
		{
			FUNC5("parse_literal_data: data type=%c", type);
			ctx->unexpected_binary = true;
		}

	ctx->unicode_mode = (type == 'u') ? 1 : 0;

	/* read data */
	while (1)
	{
		res = FUNC3(pkt, 32 * 1024, &buf);
		if (res <= 0)
			break;

		if (ctx->text_mode && ctx->convert_crlf)
			res = FUNC1(dst, buf, res, &got_cr);
		else
			res = FUNC2(dst, buf, res);
		if (res < 0)
			break;
	}
	if (res >= 0 && got_cr)
		res = FUNC2(dst, (const uint8 *) "\r", 1);
	return res;
}