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
struct TYPE_5__ {int input_length; char* token_start; char* input; char* token_terminator; char* prev_token_terminator; int /*<<< orphan*/ * strval; } ;
typedef  TYPE_1__ JsonLexContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ERRCODE_INVALID_TEXT_REPRESENTATION ; 
 int /*<<< orphan*/  ERRCODE_UNTRANSLATABLE_CHARACTER ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ PG_UTF8 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int FUNC9 (char*) ; 
 int FUNC10 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC14 (char*,char) ; 
 int /*<<< orphan*/  FUNC15 (int,unsigned char*) ; 

__attribute__((used)) static inline void
FUNC16(JsonLexContext *lex)
{
	char	   *s;
	int			len;
	int			hi_surrogate = -1;

	if (lex->strval != NULL)
		FUNC13(lex->strval);

	FUNC0(lex->input_length > 0);
	s = lex->token_start;
	len = lex->token_start - lex->input;
	for (;;)
	{
		s++;
		len++;
		/* Premature end of the string. */
		if (len >= lex->input_length)
		{
			lex->token_terminator = s;
			FUNC11(lex);
		}
		else if (*s == '"')
			break;
		else if ((unsigned char) *s < 32)
		{
			/* Per RFC4627, these characters MUST be escaped. */
			/* Since *s isn't printable, exclude it from the context string */
			lex->token_terminator = s;
			FUNC4(ERROR,
					(FUNC5(ERRCODE_INVALID_TEXT_REPRESENTATION),
					 FUNC7("invalid input syntax for type %s", "json"),
					 FUNC6("Character with value 0x%02x must be escaped.",
							   (unsigned char) *s),
					 FUNC12(lex)));
		}
		else if (*s == '\\')
		{
			/* OK, we have an escape character. */
			s++;
			len++;
			if (len >= lex->input_length)
			{
				lex->token_terminator = s;
				FUNC11(lex);
			}
			else if (*s == 'u')
			{
				int			i;
				int			ch = 0;

				for (i = 1; i <= 4; i++)
				{
					s++;
					len++;
					if (len >= lex->input_length)
					{
						lex->token_terminator = s;
						FUNC11(lex);
					}
					else if (*s >= '0' && *s <= '9')
						ch = (ch * 16) + (*s - '0');
					else if (*s >= 'a' && *s <= 'f')
						ch = (ch * 16) + (*s - 'a') + 10;
					else if (*s >= 'A' && *s <= 'F')
						ch = (ch * 16) + (*s - 'A') + 10;
					else
					{
						lex->token_terminator = s + FUNC9(s);
						FUNC4(ERROR,
								(FUNC5(ERRCODE_INVALID_TEXT_REPRESENTATION),
								 FUNC7("invalid input syntax for type %s",
										"json"),
								 FUNC6("\"\\u\" must be followed by four hexadecimal digits."),
								 FUNC12(lex)));
					}
				}
				if (lex->strval != NULL)
				{
					char		utf8str[5];
					int			utf8len;

					if (ch >= 0xd800 && ch <= 0xdbff)
					{
						if (hi_surrogate != -1)
							FUNC4(ERROR,
									(FUNC5(ERRCODE_INVALID_TEXT_REPRESENTATION),
									 FUNC7("invalid input syntax for type %s",
											"json"),
									 FUNC6("Unicode high surrogate must not follow a high surrogate."),
									 FUNC12(lex)));
						hi_surrogate = (ch & 0x3ff) << 10;
						continue;
					}
					else if (ch >= 0xdc00 && ch <= 0xdfff)
					{
						if (hi_surrogate == -1)
							FUNC4(ERROR,
									(FUNC5(ERRCODE_INVALID_TEXT_REPRESENTATION),
									 FUNC7("invalid input syntax for type %s", "json"),
									 FUNC6("Unicode low surrogate must follow a high surrogate."),
									 FUNC12(lex)));
						ch = 0x10000 + hi_surrogate + (ch & 0x3ff);
						hi_surrogate = -1;
					}

					if (hi_surrogate != -1)
						FUNC4(ERROR,
								(FUNC5(ERRCODE_INVALID_TEXT_REPRESENTATION),
								 FUNC7("invalid input syntax for type %s", "json"),
								 FUNC6("Unicode low surrogate must follow a high surrogate."),
								 FUNC12(lex)));

					/*
					 * For UTF8, replace the escape sequence by the actual
					 * utf8 character in lex->strval. Do this also for other
					 * encodings if the escape designates an ASCII character,
					 * otherwise raise an error.
					 */

					if (ch == 0)
					{
						/* We can't allow this, since our TEXT type doesn't */
						FUNC4(ERROR,
								(FUNC5(ERRCODE_UNTRANSLATABLE_CHARACTER),
								 FUNC7("unsupported Unicode escape sequence"),
								 FUNC6("\\u0000 cannot be converted to text."),
								 FUNC12(lex)));
					}
					else if (FUNC1() == PG_UTF8)
					{
						FUNC15(ch, (unsigned char *) utf8str);
						utf8len = FUNC10((unsigned char *) utf8str);
						FUNC2(lex->strval, utf8str, utf8len);
					}
					else if (ch <= 0x007f)
					{
						/*
						 * This is the only way to designate things like a
						 * form feed character in JSON, so it's useful in all
						 * encodings.
						 */
						FUNC3(lex->strval, (char) ch);
					}
					else
					{
						FUNC4(ERROR,
								(FUNC5(ERRCODE_UNTRANSLATABLE_CHARACTER),
								 FUNC7("unsupported Unicode escape sequence"),
								 FUNC6("Unicode escape values cannot be used for code point values above 007F when the server encoding is not UTF8."),
								 FUNC12(lex)));
					}

				}
			}
			else if (lex->strval != NULL)
			{
				if (hi_surrogate != -1)
					FUNC4(ERROR,
							(FUNC5(ERRCODE_INVALID_TEXT_REPRESENTATION),
							 FUNC7("invalid input syntax for type %s",
									"json"),
							 FUNC6("Unicode low surrogate must follow a high surrogate."),
							 FUNC12(lex)));

				switch (*s)
				{
					case '"':
					case '\\':
					case '/':
						FUNC3(lex->strval, *s);
						break;
					case 'b':
						FUNC3(lex->strval, '\b');
						break;
					case 'f':
						FUNC3(lex->strval, '\f');
						break;
					case 'n':
						FUNC3(lex->strval, '\n');
						break;
					case 'r':
						FUNC3(lex->strval, '\r');
						break;
					case 't':
						FUNC3(lex->strval, '\t');
						break;
					default:
						/* Not a valid string escape, so error out. */
						lex->token_terminator = s + FUNC9(s);
						FUNC4(ERROR,
								(FUNC5(ERRCODE_INVALID_TEXT_REPRESENTATION),
								 FUNC7("invalid input syntax for type %s",
										"json"),
								 FUNC6("Escape sequence \"\\%s\" is invalid.",
										   FUNC8(s)),
								 FUNC12(lex)));
				}
			}
			else if (FUNC14("\"\\/bfnrt", *s) == NULL)
			{
				/*
				 * Simpler processing if we're not bothered about de-escaping
				 *
				 * It's very tempting to remove the strchr() call here and
				 * replace it with a switch statement, but testing so far has
				 * shown it's not a performance win.
				 */
				lex->token_terminator = s + FUNC9(s);
				FUNC4(ERROR,
						(FUNC5(ERRCODE_INVALID_TEXT_REPRESENTATION),
						 FUNC7("invalid input syntax for type %s", "json"),
						 FUNC6("Escape sequence \"\\%s\" is invalid.",
								   FUNC8(s)),
						 FUNC12(lex)));
			}

		}
		else if (lex->strval != NULL)
		{
			if (hi_surrogate != -1)
				FUNC4(ERROR,
						(FUNC5(ERRCODE_INVALID_TEXT_REPRESENTATION),
						 FUNC7("invalid input syntax for type %s", "json"),
						 FUNC6("Unicode low surrogate must follow a high surrogate."),
						 FUNC12(lex)));

			FUNC3(lex->strval, *s);
		}

	}

	if (hi_surrogate != -1)
		FUNC4(ERROR,
				(FUNC5(ERRCODE_INVALID_TEXT_REPRESENTATION),
				 FUNC7("invalid input syntax for type %s", "json"),
				 FUNC6("Unicode low surrogate must follow a high surrogate."),
				 FUNC12(lex)));

	/* Hooray, we found the end of the string! */
	lex->prev_token_terminator = lex->token_terminator;
	lex->token_terminator = s + 1;
}