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
typedef  enum isn_type { ____Placeholder_isn_type } isn_type ;
typedef  int /*<<< orphan*/  eanbuf ;
typedef  int ean13 ;

/* Variables and functions */
 int EAN13 ; 
 char* EAN13_FORMAT ; 
 unsigned int const** EAN13_index ; 
 char const*** EAN13_range ; 
 int /*<<< orphan*/  ERRCODE_NUMERIC_VALUE_OUT_OF_RANGE ; 
 int /*<<< orphan*/  ERROR ; 
 int INVALID ; 
#define  ISBN 131 
 unsigned int** ISBN_index ; 
 unsigned int** ISBN_index_new ; 
 char*** ISBN_range ; 
 char*** ISBN_range_new ; 
#define  ISMN 130 
 unsigned int** ISMN_index ; 
 char*** ISMN_range ; 
#define  ISSN 129 
 unsigned int** ISSN_index ; 
 char*** ISSN_range ; 
 int MAXEAN13LEN ; 
 int FUNC0 (int) ; 
#define  UPC 128 
 unsigned int** UPC_index ; 
 char*** UPC_range ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC8 (char*,char*,char const***,unsigned int const**) ; 
 int /*<<< orphan*/ * isn_names ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char*,int) ; 
 scalar_t__ FUNC10 (char*,char*,unsigned int) ; 

__attribute__((used)) static bool
FUNC11(ean13 ean, bool errorOK, char *result, bool shortType)
{
	const char *(*TABLE)[2];
	const unsigned (*TABLE_index)[2];
	enum isn_type type = INVALID;

	char	   *aux;
	unsigned	digval;
	unsigned	search;
	char		valid = '\0';	/* was the number initially written with a
								 * valid check digit? */

	TABLE_index = ISBN_index;

	if ((ean & 1) != 0)
		valid = '!';
	ean >>= 1;
	/* verify it's in the EAN13 range */
	if (ean > FUNC0(9999999999999))
		goto eantoobig;

	/* convert the number */
	search = 0;
	aux = result + MAXEAN13LEN;
	*aux = '\0';				/* terminate string; aux points to last digit */
	*--aux = valid;				/* append '!' for numbers with invalid but
								 * corrected check digit */
	do
	{
		digval = (unsigned) (ean % 10); /* get the decimal value */
		ean /= 10;				/* get next digit */
		*--aux = (char) (digval + '0'); /* convert to ascii and store */
		if (search == 0)
			*--aux = '-';		/* the check digit is always there */
	} while (ean && search++ < 13);
	while (search++ < 13)
		*--aux = '0';			/* fill the remaining EAN13 with '0' */

	/* The string should be in this form: ???DDDDDDDDDDDD-D" */
	search = FUNC8(result, result + 3, EAN13_range, EAN13_index);

	/* verify it's a logically valid EAN13 */
	if (search == 0)
	{
		search = FUNC8(result, result + 3, NULL, NULL);
		goto okay;
	}

	/* find out what type of hyphenation is needed: */
	if (FUNC10("978-", result, search) == 0)
	{							/* ISBN -13 978-range */
		/* The string should be in this form: 978-??000000000-0" */
		type = ISBN;
		TABLE = ISBN_range;
		TABLE_index = ISBN_index;
	}
	else if (FUNC10("977-", result, search) == 0)
	{							/* ISSN */
		/* The string should be in this form: 977-??000000000-0" */
		type = ISSN;
		TABLE = ISSN_range;
		TABLE_index = ISSN_index;
	}
	else if (FUNC10("979-0", result, search + 1) == 0)
	{							/* ISMN */
		/* The string should be in this form: 979-0?000000000-0" */
		type = ISMN;
		TABLE = ISMN_range;
		TABLE_index = ISMN_index;
	}
	else if (FUNC10("979-", result, search) == 0)
	{							/* ISBN-13 979-range */
		/* The string should be in this form: 979-??000000000-0" */
		type = ISBN;
		TABLE = ISBN_range_new;
		TABLE_index = ISBN_index_new;
	}
	else if (*result == '0')
	{							/* UPC */
		/* The string should be in this form: 000-00000000000-0" */
		type = UPC;
		TABLE = UPC_range;
		TABLE_index = UPC_index;
	}
	else
	{
		type = EAN13;
		TABLE = NULL;
		TABLE_index = NULL;
	}

	/* verify it's a logically valid EAN13/UPC/ISxN */
	digval = search;
	search = FUNC8(result + digval, result + digval + 2, TABLE, TABLE_index);

	/* verify it's a valid EAN13 */
	if (search == 0)
	{
		search = FUNC8(result + digval, result + digval + 2, NULL, NULL);
		goto okay;
	}

okay:
	/* convert to the old short type: */
	if (shortType)
		switch (type)
		{
			case ISBN:
				FUNC1(result);
				break;
			case ISMN:
				FUNC2(result);
				break;
			case ISSN:
				FUNC3(result);
				break;
			case UPC:
				FUNC4(result);
				break;
			default:
				break;
		}
	return true;

eantoobig:
	if (!errorOK)
	{
		char		eanbuf[64];

		/*
		 * Format the number separately to keep the machine-dependent format
		 * code out of the translatable message text
		 */
		FUNC9(eanbuf, sizeof(eanbuf), EAN13_FORMAT, ean);
		FUNC5(ERROR,
				(FUNC6(ERRCODE_NUMERIC_VALUE_OUT_OF_RANGE),
				 FUNC7("value \"%s\" is out of range for %s type",
						eanbuf, isn_names[type])));
	}
	return false;
}