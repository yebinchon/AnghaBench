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
typedef  unsigned char uint8 ;
typedef  int /*<<< orphan*/  PX_MD ;

/* Variables and functions */
 int MD5_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned long,int) ; 
 int FUNC1 (char*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 int FUNC9 (char const*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char const*,int) ; 
 scalar_t__ FUNC11 (char const*,char*,int) ; 

char *
FUNC12(const char *pw, const char *salt, char *passwd, unsigned dstlen)
{
	static char *magic = "$1$"; /* This string is magic for this algorithm.
								 * Having it this way, we can get better later
								 * on */
	static char *p;
	static const char *sp,
			   *ep;
	unsigned char final[MD5_SIZE];
	int			sl,
				pl,
				i;
	PX_MD	   *ctx,
			   *ctx1;
	int			err;
	unsigned long l;

	if (!passwd || dstlen < 120)
		return NULL;

	/* Refine the Salt first */
	sp = salt;

	/* If it starts with the magic string, then skip that */
	if (FUNC11(sp, magic, FUNC9(magic)) == 0)
		sp += FUNC9(magic);

	/* It stops at the first '$', max 8 chars */
	for (ep = sp; *ep && *ep != '$' && ep < (sp + 8); ep++)
		continue;

	/* get the length of the true salt */
	sl = ep - sp;

	/* */
	err = FUNC1("md5", &ctx);
	if (err)
		return NULL;
	err = FUNC1("md5", &ctx1);

	/* The password first, since that is what is most unknown */
	FUNC5(ctx, (const uint8 *) pw, FUNC9(pw));

	/* Then our magic string */
	FUNC5(ctx, (uint8 *) magic, FUNC9(magic));

	/* Then the raw salt */
	FUNC5(ctx, (const uint8 *) sp, sl);

	/* Then just as many characters of the MD5(pw,salt,pw) */
	FUNC5(ctx1, (const uint8 *) pw, FUNC9(pw));
	FUNC5(ctx1, (const uint8 *) sp, sl);
	FUNC5(ctx1, (const uint8 *) pw, FUNC9(pw));
	FUNC2(ctx1, final);
	for (pl = FUNC9(pw); pl > 0; pl -= MD5_SIZE)
		FUNC5(ctx, final, pl > MD5_SIZE ? MD5_SIZE : pl);

	/* Don't leave anything around in vm they could use. */
	FUNC6(final, 0, sizeof final);

	/* Then something really weird... */
	for (i = FUNC9(pw); i; i >>= 1)
		if (i & 1)
			FUNC5(ctx, final, 1);
		else
			FUNC5(ctx, (const uint8 *) pw, 1);

	/* Now make the output string */
	FUNC8(passwd, magic);
	FUNC10(passwd, sp, sl);
	FUNC7(passwd, "$");

	FUNC2(ctx, final);

	/*
	 * and now, just to make sure things don't run too fast On a 60 Mhz
	 * Pentium this takes 34 msec, so you would need 30 seconds to build a
	 * 1000 entry dictionary...
	 */
	for (i = 0; i < 1000; i++)
	{
		FUNC4(ctx1);
		if (i & 1)
			FUNC5(ctx1, (const uint8 *) pw, FUNC9(pw));
		else
			FUNC5(ctx1, final, MD5_SIZE);

		if (i % 3)
			FUNC5(ctx1, (const uint8 *) sp, sl);

		if (i % 7)
			FUNC5(ctx1, (const uint8 *) pw, FUNC9(pw));

		if (i & 1)
			FUNC5(ctx1, final, MD5_SIZE);
		else
			FUNC5(ctx1, (const uint8 *) pw, FUNC9(pw));
		FUNC2(ctx1, final);
	}

	p = passwd + FUNC9(passwd);

	l = (final[0] << 16) | (final[6] << 8) | final[12];
	FUNC0(p, l, 4);
	p += 4;
	l = (final[1] << 16) | (final[7] << 8) | final[13];
	FUNC0(p, l, 4);
	p += 4;
	l = (final[2] << 16) | (final[8] << 8) | final[14];
	FUNC0(p, l, 4);
	p += 4;
	l = (final[3] << 16) | (final[9] << 8) | final[15];
	FUNC0(p, l, 4);
	p += 4;
	l = (final[4] << 16) | (final[10] << 8) | final[5];
	FUNC0(p, l, 4);
	p += 4;
	l = final[11];
	FUNC0(p, l, 2);
	p += 2;
	*p = '\0';

	/* Don't leave anything around in vm they could use. */
	FUNC6(final, 0, sizeof final);

	FUNC3(ctx1);
	FUNC3(ctx);

	return passwd;
}