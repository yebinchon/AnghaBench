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
typedef  int /*<<< orphan*/  text ;
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERRCODE_SYNTAX_ERROR ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/ * NIL ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

List *
FUNC15(Datum txt)
{
	text	   *in = FUNC0(txt);	/* in case it's toasted */
	List	   *result = NIL;
	int			len = FUNC2(in);
	char	   *ptr,
			   *endptr,
			   *workspace,
			   *wsptr = NULL,
			   *startvalue = NULL;
	typedef enum
	{
		CS_WAITKEY,
		CS_INKEY,
		CS_INQKEY,
		CS_WAITEQ,
		CS_WAITVALUE,
		CS_INSQVALUE,
		CS_INDQVALUE,
		CS_INWVALUE
	} ds_state;
	ds_state	state = CS_WAITKEY;

	workspace = (char *) FUNC11(len + 1);	/* certainly enough room */
	ptr = FUNC1(in);
	endptr = ptr + len;
	for (; ptr < endptr; ptr++)
	{
		switch (state)
		{
			case CS_WAITKEY:
				if (FUNC7((unsigned char) *ptr) || *ptr == ',')
					continue;
				if (*ptr == '"')
				{
					wsptr = workspace;
					state = CS_INQKEY;
				}
				else
				{
					wsptr = workspace;
					*wsptr++ = *ptr;
					state = CS_INKEY;
				}
				break;
			case CS_INKEY:
				if (FUNC7((unsigned char) *ptr))
				{
					*wsptr++ = '\0';
					state = CS_WAITEQ;
				}
				else if (*ptr == '=')
				{
					*wsptr++ = '\0';
					state = CS_WAITVALUE;
				}
				else
				{
					*wsptr++ = *ptr;
				}
				break;
			case CS_INQKEY:
				if (*ptr == '"')
				{
					if (ptr + 1 < endptr && ptr[1] == '"')
					{
						/* copy only one of the two quotes */
						*wsptr++ = *ptr++;
					}
					else
					{
						*wsptr++ = '\0';
						state = CS_WAITEQ;
					}
				}
				else
				{
					*wsptr++ = *ptr;
				}
				break;
			case CS_WAITEQ:
				if (*ptr == '=')
					state = CS_WAITVALUE;
				else if (!FUNC7((unsigned char) *ptr))
					FUNC4(ERROR,
							(FUNC5(ERRCODE_SYNTAX_ERROR),
							 FUNC6("invalid parameter list format: \"%s\"",
									FUNC14(in))));
				break;
			case CS_WAITVALUE:
				if (*ptr == '\'')
				{
					startvalue = wsptr;
					state = CS_INSQVALUE;
				}
				else if (*ptr == 'E' && ptr + 1 < endptr && ptr[1] == '\'')
				{
					ptr++;
					startvalue = wsptr;
					state = CS_INSQVALUE;
				}
				else if (*ptr == '"')
				{
					startvalue = wsptr;
					state = CS_INDQVALUE;
				}
				else if (!FUNC7((unsigned char) *ptr))
				{
					startvalue = wsptr;
					*wsptr++ = *ptr;
					state = CS_INWVALUE;
				}
				break;
			case CS_INSQVALUE:
				if (*ptr == '\'')
				{
					if (ptr + 1 < endptr && ptr[1] == '\'')
					{
						/* copy only one of the two quotes */
						*wsptr++ = *ptr++;
					}
					else
					{
						*wsptr++ = '\0';
						result = FUNC8(result,
										 FUNC9(FUNC13(workspace),
													 (Node *) FUNC10(FUNC13(startvalue)), -1));
						state = CS_WAITKEY;
					}
				}
				else if (*ptr == '\\')
				{
					if (ptr + 1 < endptr && ptr[1] == '\\')
					{
						/* copy only one of the two backslashes */
						*wsptr++ = *ptr++;
					}
					else
						*wsptr++ = *ptr;
				}
				else
				{
					*wsptr++ = *ptr;
				}
				break;
			case CS_INDQVALUE:
				if (*ptr == '"')
				{
					if (ptr + 1 < endptr && ptr[1] == '"')
					{
						/* copy only one of the two quotes */
						*wsptr++ = *ptr++;
					}
					else
					{
						*wsptr++ = '\0';
						result = FUNC8(result,
										 FUNC9(FUNC13(workspace),
													 (Node *) FUNC10(FUNC13(startvalue)), -1));
						state = CS_WAITKEY;
					}
				}
				else
				{
					*wsptr++ = *ptr;
				}
				break;
			case CS_INWVALUE:
				if (*ptr == ',' || FUNC7((unsigned char) *ptr))
				{
					*wsptr++ = '\0';
					result = FUNC8(result,
									 FUNC9(FUNC13(workspace),
												 (Node *) FUNC10(FUNC13(startvalue)), -1));
					state = CS_WAITKEY;
				}
				else
				{
					*wsptr++ = *ptr;
				}
				break;
			default:
				FUNC3(ERROR, "unrecognized deserialize_deflist state: %d",
					 state);
		}
	}

	if (state == CS_INWVALUE)
	{
		*wsptr++ = '\0';
		result = FUNC8(result,
						 FUNC9(FUNC13(workspace),
									 (Node *) FUNC10(FUNC13(startvalue)), -1));
	}
	else if (state != CS_WAITKEY)
		FUNC4(ERROR,
				(FUNC5(ERRCODE_SYNTAX_ERROR),
				 FUNC6("invalid parameter list format: \"%s\"",
						FUNC14(in))));

	FUNC12(workspace);

	return result;
}