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
typedef  char uint8 ;

/* Variables and functions */
 int PXE_PGP_CORRUPT_ARMOR ; 
 char* FUNC0 (char const*,char const*,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char const*,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 

__attribute__((used)) static int
FUNC3(const uint8 *data, const uint8 *datend,
			const uint8 **start_p, int is_end)
{
	const uint8 *p = data;
	static const char *start_sep = "-----BEGIN";
	static const char *end_sep = "-----END";
	const char *sep = is_end ? end_sep : start_sep;

	/* find header line */
	while (1)
	{
		p = FUNC0(p, datend, sep, FUNC2(sep));
		if (p == NULL)
			return PXE_PGP_CORRUPT_ARMOR;
		/* it must start at beginning of line */
		if (p == data || *(p - 1) == '\n')
			break;
		p += FUNC2(sep);
	}
	*start_p = p;
	p += FUNC2(sep);

	/* check if header text ok */
	for (; p < datend && *p != '-'; p++)
	{
		/* various junk can be there, but definitely not line-feed	*/
		if (*p >= ' ')
			continue;
		return PXE_PGP_CORRUPT_ARMOR;
	}
	if (datend - p < 5 || FUNC1(p, sep, 5) != 0)
		return PXE_PGP_CORRUPT_ARMOR;
	p += 5;

	/* check if at end of line */
	if (p < datend)
	{
		if (*p != '\n' && *p != '\r')
			return PXE_PGP_CORRUPT_ARMOR;
		if (*p == '\r')
			p++;
		if (p < datend && *p == '\n')
			p++;
	}
	return p - *start_p;
}