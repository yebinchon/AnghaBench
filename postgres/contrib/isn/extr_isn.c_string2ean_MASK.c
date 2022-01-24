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
typedef  int ean13 ;

/* Variables and functions */
 int ANY ; 
#define  EAN13 132 
 int /*<<< orphan*/  ERRCODE_INVALID_TEXT_REPRESENTATION ; 
 int /*<<< orphan*/  ERRCODE_NUMERIC_VALUE_OUT_OF_RANGE ; 
 int /*<<< orphan*/  ERROR ; 
 int INVALID ; 
#define  ISBN 131 
#define  ISMN 130 
#define  ISSN 129 
#define  UPC 128 
 void* FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,char const*,...) ; 
 scalar_t__ g_weak ; 
 scalar_t__ FUNC4 (unsigned char) ; 
 char const** isn_names ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 int FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int) ; 
 void* FUNC8 (unsigned char) ; 
 unsigned int FUNC9 (char*,int) ; 

__attribute__((used)) static bool
FUNC10(const char *str, bool errorOK, ean13 *result,
		   enum isn_type accept)
{
	bool		digit,
				last;
	char		buf[17] = "                ";
	char	   *aux1 = buf + 3; /* leave space for the first part, in case
								 * it's needed */
	const char *aux2 = str;
	enum isn_type type = INVALID;
	unsigned	check = 0,
				rcheck = (unsigned) -1;
	unsigned	length = 0;
	bool		magic = false,
				valid = true;

	/* recognize and validate the number: */
	while (*aux2 && length <= 13)
	{
		last = (*(aux2 + 1) == '!' || *(aux2 + 1) == '\0'); /* is the last character */
		digit = (FUNC4((unsigned char) *aux2) != 0);	/* is current character
														 * a digit? */
		if (*aux2 == '?' && last)	/* automagically calculate check digit if
									 * it's '?' */
			magic = digit = true;
		if (length == 0 && (*aux2 == 'M' || *aux2 == 'm'))
		{
			/* only ISMN can be here */
			if (type != INVALID)
				goto eaninvalid;
			type = ISMN;
			*aux1++ = 'M';
			length++;
		}
		else if (length == 7 && (digit || *aux2 == 'X' || *aux2 == 'x') && last)
		{
			/* only ISSN can be here */
			if (type != INVALID)
				goto eaninvalid;
			type = ISSN;
			*aux1++ = FUNC8((unsigned char) *aux2);
			length++;
		}
		else if (length == 9 && (digit || *aux2 == 'X' || *aux2 == 'x') && last)
		{
			/* only ISBN and ISMN can be here */
			if (type != INVALID && type != ISMN)
				goto eaninvalid;
			if (type == INVALID)
				type = ISBN;	/* ISMN must start with 'M' */
			*aux1++ = FUNC8((unsigned char) *aux2);
			length++;
		}
		else if (length == 11 && digit && last)
		{
			/* only UPC can be here */
			if (type != INVALID)
				goto eaninvalid;
			type = UPC;
			*aux1++ = *aux2;
			length++;
		}
		else if (*aux2 == '-' || *aux2 == ' ')
		{
			/* skip, we could validate but I think it's worthless */
		}
		else if (*aux2 == '!' && *(aux2 + 1) == '\0')
		{
			/* the invalid check digit suffix was found, set it */
			if (!magic)
				valid = false;
			magic = true;
		}
		else if (!digit)
		{
			goto eaninvalid;
		}
		else
		{
			*aux1++ = *aux2;
			if (++length > 13)
				goto eantoobig;
		}
		aux2++;
	}
	*aux1 = '\0';				/* terminate the string */

	/* find the current check digit value */
	if (length == 13)
	{
		/* only EAN13 can be here */
		if (type != INVALID)
			goto eaninvalid;
		type = EAN13;
		check = buf[15] - '0';
	}
	else if (length == 12)
	{
		/* only UPC can be here */
		if (type != UPC)
			goto eaninvalid;
		check = buf[14] - '0';
	}
	else if (length == 10)
	{
		if (type != ISBN && type != ISMN)
			goto eaninvalid;
		if (buf[12] == 'X')
			check = 10;
		else
			check = buf[12] - '0';
	}
	else if (length == 8)
	{
		if (type != INVALID && type != ISSN)
			goto eaninvalid;
		type = ISSN;
		if (buf[10] == 'X')
			check = 10;
		else
			check = buf[10] - '0';
	}
	else
		goto eaninvalid;

	if (type == INVALID)
		goto eaninvalid;

	/* obtain the real check digit value, validate, and convert to ean13: */
	if (accept == EAN13 && type != accept)
		goto eanwrongtype;
	if (accept != ANY && type != EAN13 && type != accept)
		goto eanwrongtype;
	switch (type)
	{
		case EAN13:
			valid = (valid && ((rcheck = FUNC0(buf + 3, 13)) == check || magic));
			/* now get the subtype of EAN13: */
			if (buf[3] == '0')
				type = UPC;
			else if (FUNC7("977", buf + 3, 3) == 0)
				type = ISSN;
			else if (FUNC7("978", buf + 3, 3) == 0)
				type = ISBN;
			else if (FUNC7("9790", buf + 3, 4) == 0)
				type = ISMN;
			else if (FUNC7("979", buf + 3, 3) == 0)
				type = ISBN;
			if (accept != EAN13 && accept != ANY && type != accept)
				goto eanwrongtype;
			break;
		case ISMN:
			FUNC5(buf, "9790", 4); /* this isn't for sure yet, for now ISMN
									 * it's only 9790 */
			valid = (valid && ((rcheck = FUNC0(buf, 13)) == check || magic));
			break;
		case ISBN:
			FUNC5(buf, "978", 3);
			valid = (valid && ((rcheck = FUNC9(buf + 3, 10)) == check || magic));
			break;
		case ISSN:
			FUNC5(buf + 10, "00", 2);	/* append 00 as the normal issue
										 * publication code */
			FUNC5(buf, "977", 3);
			valid = (valid && ((rcheck = FUNC9(buf + 3, 8)) == check || magic));
			break;
		case UPC:
			buf[2] = '0';
			valid = (valid && ((rcheck = FUNC0(buf + 2, 13)) == check || magic));
		default:
			break;
	}

	/* fix the check digit: */
	for (aux1 = buf; *aux1 && *aux1 <= ' '; aux1++);
	aux1[12] = FUNC0(aux1, 13) + '0';
	aux1[13] = '\0';

	if (!valid && !magic)
		goto eanbadcheck;

	*result = FUNC6(aux1);
	*result |= valid ? 0 : 1;
	return true;

eanbadcheck:
	if (g_weak)
	{							/* weak input mode is activated: */
		/* set the "invalid-check-digit-on-input" flag */
		*result = FUNC6(aux1);
		*result |= 1;
		return true;
	}

	if (!errorOK)
	{
		if (rcheck == (unsigned) -1)
		{
			FUNC1(ERROR,
					(FUNC2(ERRCODE_INVALID_TEXT_REPRESENTATION),
					 FUNC3("invalid %s number: \"%s\"",
							isn_names[accept], str)));
		}
		else
		{
			FUNC1(ERROR,
					(FUNC2(ERRCODE_INVALID_TEXT_REPRESENTATION),
					 FUNC3("invalid check digit for %s number: \"%s\", should be %c",
							isn_names[accept], str, (rcheck == 10) ? ('X') : (rcheck + '0'))));
		}
	}
	return false;

eaninvalid:
	if (!errorOK)
		FUNC1(ERROR,
				(FUNC2(ERRCODE_INVALID_TEXT_REPRESENTATION),
				 FUNC3("invalid input syntax for %s number: \"%s\"",
						isn_names[accept], str)));
	return false;

eanwrongtype:
	if (!errorOK)
		FUNC1(ERROR,
				(FUNC2(ERRCODE_INVALID_TEXT_REPRESENTATION),
				 FUNC3("cannot cast %s to %s for number: \"%s\"",
						isn_names[type], isn_names[accept], str)));
	return false;

eantoobig:
	if (!errorOK)
		FUNC1(ERROR,
				(FUNC2(ERRCODE_NUMERIC_VALUE_OUT_OF_RANGE),
				 FUNC3("value \"%s\" is out of range for %s type",
						str, isn_names[accept])));
	return false;
}