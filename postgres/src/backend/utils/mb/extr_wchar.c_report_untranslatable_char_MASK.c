#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_UNTRANSLATABLE_CHARACTER ; 
 int /*<<< orphan*/  ERROR ; 
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* pg_enc2name_tbl ; 
 int FUNC4 (int,char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,...) ; 

void
FUNC6(int src_encoding, int dest_encoding,
						   const char *mbstr, int len)
{
	int			l = FUNC4(src_encoding, mbstr);
	char		buf[8 * 5 + 1];
	char	   *p = buf;
	int			j,
				jlimit;

	jlimit = FUNC0(l, len);
	jlimit = FUNC0(jlimit, 8);	/* prevent buffer overrun */

	for (j = 0; j < jlimit; j++)
	{
		p += FUNC5(p, "0x%02x", (unsigned char) mbstr[j]);
		if (j < jlimit - 1)
			p += FUNC5(p, " ");
	}

	FUNC1(ERROR,
			(FUNC2(ERRCODE_UNTRANSLATABLE_CHARACTER),
			 FUNC3("character with byte sequence %s in encoding \"%s\" has no equivalent in encoding \"%s\"",
					buf,
					pg_enc2name_tbl[src_encoding].name,
					pg_enc2name_tbl[dest_encoding].name)));
}