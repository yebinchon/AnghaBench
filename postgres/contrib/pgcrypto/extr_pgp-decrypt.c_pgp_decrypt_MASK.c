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
struct TYPE_8__ {int disable_mdc; scalar_t__ unexpected_binary; scalar_t__ unsupported_compr; scalar_t__ corrupt_prefix; } ;
typedef  int /*<<< orphan*/  PullFilter ;
typedef  TYPE_1__ PGP_Context ;
typedef  int /*<<< orphan*/  MBuf ;

/* Variables and functions */
 int /*<<< orphan*/  NO_CTX_SIZE ; 
#define  PGP_PKT_MARKER 132 
#define  PGP_PKT_PUBENCRYPTED_SESSKEY 131 
#define  PGP_PKT_SYMENCRYPTED_DATA 130 
#define  PGP_PKT_SYMENCRYPTED_DATA_MDC 129 
#define  PGP_PKT_SYMENCRYPTED_SESSKEY 128 
 int PXE_PGP_CORRUPT_DATA ; 
 int PXE_PGP_NOT_TEXT ; 
 int PXE_PGP_UNSUPPORTED_COMPR ; 
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int,int,TYPE_1__*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int*,int*,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 

int
FUNC10(PGP_Context *ctx, MBuf *msrc, MBuf *mdst)
{
	int			res;
	PullFilter *src = NULL;
	PullFilter *pkt = NULL;
	uint8		tag;
	int			len;
	int			got_key = 0;
	int			got_data = 0;

	res = FUNC7(&src, msrc);

	while (res >= 0)
	{
		res = FUNC4(src, &tag, &len, NO_CTX_SIZE);
		if (res <= 0)
			break;

		res = FUNC3(&pkt, src, len, res, ctx);
		if (res < 0)
			break;

		res = PXE_PGP_CORRUPT_DATA;
		switch (tag)
		{
			case PGP_PKT_MARKER:
				res = FUNC6(pkt);
				break;
			case PGP_PKT_PUBENCRYPTED_SESSKEY:
				/* fixme: skip those */
				res = FUNC5(ctx, pkt);
				got_key = 1;
				break;
			case PGP_PKT_SYMENCRYPTED_SESSKEY:
				if (got_key)

					/*
					 * Theoretically, there could be several keys, both public
					 * and symmetric, all of which encrypt same session key.
					 * Decrypt should try with each one, before failing.
					 */
					FUNC9("pgp_decrypt: using first of several keys");
				else
				{
					got_key = 1;
					res = FUNC2(ctx, pkt);
				}
				break;
			case PGP_PKT_SYMENCRYPTED_DATA:
				if (!got_key)
					FUNC9("pgp_decrypt: have data but no key");
				else if (got_data)
					FUNC9("pgp_decrypt: got second data packet");
				else
				{
					got_data = 1;
					ctx->disable_mdc = 1;
					res = FUNC0(ctx, pkt, mdst);
				}
				break;
			case PGP_PKT_SYMENCRYPTED_DATA_MDC:
				if (!got_key)
					FUNC9("pgp_decrypt: have data but no key");
				else if (got_data)
					FUNC9("pgp_decrypt: several data pkts not supported");
				else
				{
					got_data = 1;
					ctx->disable_mdc = 0;
					res = FUNC1(ctx, pkt, mdst);
				}
				break;
			default:
				FUNC9("pgp_decrypt: unknown tag: 0x%02x", tag);
		}
		FUNC8(pkt);
		pkt = NULL;
	}

	if (pkt)
		FUNC8(pkt);

	if (src)
		FUNC8(src);

	if (res < 0)
		return res;

	/*
	 * Report a failure of the prefix_init() "quick check" now, rather than
	 * upon detection, to hinder timing attacks.  pgcrypto is not generally
	 * secure against timing attacks, but this helps.
	 */
	if (!got_data || ctx->corrupt_prefix)
		return PXE_PGP_CORRUPT_DATA;

	/*
	 * Code interpreting purportedly-decrypted data prior to this stage shall
	 * report no error other than PXE_PGP_CORRUPT_DATA.  (PXE_BUG is okay so
	 * long as it remains unreachable.)  This ensures that an attacker able to
	 * choose a ciphertext and receive a corresponding decryption error
	 * message cannot use that oracle to gather clues about the decryption
	 * key.  See "An Attack on CFB Mode Encryption As Used By OpenPGP" by
	 * Serge Mister and Robert Zuccherato.
	 *
	 * A problematic value in the first octet of a Literal Data or Compressed
	 * Data packet may indicate a simple user error, such as the need to call
	 * pgp_sym_decrypt_bytea instead of pgp_sym_decrypt.  Occasionally,
	 * though, it is the first symptom of the encryption key not matching the
	 * decryption key.  When this was the only problem encountered, report a
	 * specific error to guide the user; otherwise, we will have reported
	 * PXE_PGP_CORRUPT_DATA before now.  A key mismatch makes the other errors
	 * into red herrings, and this avoids leaking clues to attackers.
	 */
	if (ctx->unsupported_compr)
		return PXE_PGP_UNSUPPORTED_COMPR;
	if (ctx->unexpected_binary)
		return PXE_PGP_NOT_TEXT;

	return res;
}