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
typedef  unsigned char (* utf_local_conversion_func ) (unsigned char) ;
typedef  unsigned char uint32 ;
typedef  int /*<<< orphan*/  pg_mb_radix_tree ;
struct TYPE_5__ {unsigned char utf1; unsigned char utf2; } ;
typedef  TYPE_1__ pg_local_to_utf_combined ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_INVALID_PARAMETER_VALUE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (unsigned char const) ; 
 int /*<<< orphan*/  PG_UTF8 ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_1__* FUNC2 (unsigned char*,TYPE_1__ const*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  compare4 ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int FUNC7 (int,char const*,int) ; 
 unsigned char FUNC8 (int /*<<< orphan*/  const*,int,unsigned char,unsigned char,unsigned char,unsigned char) ; 
 int /*<<< orphan*/  FUNC9 (int,char const*,int) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ ,char const*,int) ; 
 unsigned char* FUNC11 (unsigned char*,unsigned char) ; 
 unsigned char FUNC12 (unsigned char) ; 

void
FUNC13(const unsigned char *iso, int len,
		   unsigned char *utf,
		   const pg_mb_radix_tree *map,
		   const pg_local_to_utf_combined *cmap, int cmapsize,
		   utf_local_conversion_func conv_func,
		   int encoding)
{
	uint32		iiso;
	int			l;
	const pg_local_to_utf_combined *cp;

	if (!FUNC1(encoding))
		FUNC4(ERROR,
				(FUNC5(ERRCODE_INVALID_PARAMETER_VALUE),
				 FUNC6("invalid encoding number: %d", encoding)));

	for (; len > 0; len -= l)
	{
		unsigned char b1 = 0;
		unsigned char b2 = 0;
		unsigned char b3 = 0;
		unsigned char b4 = 0;

		/* "break" cases all represent errors */
		if (*iso == '\0')
			break;

		if (!FUNC0(*iso))
		{
			/* ASCII case is easy, assume it's one-to-one conversion */
			*utf++ = *iso++;
			l = 1;
			continue;
		}

		l = FUNC7(encoding, (const char *) iso, len);
		if (l < 0)
			break;

		/* collect coded char of length l */
		if (l == 1)
			b4 = *iso++;
		else if (l == 2)
		{
			b3 = *iso++;
			b4 = *iso++;
		}
		else if (l == 3)
		{
			b2 = *iso++;
			b3 = *iso++;
			b4 = *iso++;
		}
		else if (l == 4)
		{
			b1 = *iso++;
			b2 = *iso++;
			b3 = *iso++;
			b4 = *iso++;
		}
		else
		{
			FUNC3(ERROR, "unsupported character length %d", l);
			iiso = 0;			/* keep compiler quiet */
		}
		iiso = (b1 << 24 | b2 << 16 | b3 << 8 | b4);

		if (map)
		{
			uint32		converted = FUNC8(map, l, b1, b2, b3, b4);

			if (converted)
			{
				utf = FUNC11(utf, converted);
				continue;
			}

			/* If there's a combined character map, try that */
			if (cmap)
			{
				cp = FUNC2(&iiso, cmap, cmapsize,
							 sizeof(pg_local_to_utf_combined), compare4);

				if (cp)
				{
					utf = FUNC11(utf, cp->utf1);
					utf = FUNC11(utf, cp->utf2);
					continue;
				}
			}
		}

		/* if there's a conversion function, try that */
		if (conv_func)
		{
			uint32		converted = (*conv_func) (iiso);

			if (converted)
			{
				utf = FUNC11(utf, converted);
				continue;
			}
		}

		/* failed to translate this character */
		FUNC10(encoding, PG_UTF8,
								   (const char *) (iso - l), len);
	}

	/* if we broke out of loop early, must be invalid input */
	if (len > 0)
		FUNC9(encoding, (const char *) iso, len);

	*utf = '\0';
}