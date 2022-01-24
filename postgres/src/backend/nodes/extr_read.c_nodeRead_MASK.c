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
typedef  int /*<<< orphan*/  Oid ;
typedef  scalar_t__ NodeTag ;
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  List ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
#define  LEFT_BRACE 135 
#define  LEFT_PAREN 134 
 int /*<<< orphan*/ * NIL ; 
#define  OTHER_TOKEN 133 
#define  RIGHT_PAREN 132 
#define  T_BitString 131 
#define  T_Float 130 
#define  T_Integer 129 
#define  T_String 128 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (char*) ; 
 scalar_t__ FUNC7 (char*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,char const*,int) ; 
 scalar_t__ FUNC11 (char const*,int) ; 
 char* FUNC12 (int) ; 
 int /*<<< orphan*/ * FUNC13 () ; 
 char* FUNC14 (int*) ; 
 scalar_t__ FUNC15 (char const*,char**,int) ; 
 int /*<<< orphan*/  FUNC16 (char const*,char**,int) ; 

void *
FUNC17(const char *token, int tok_len)
{
	Node	   *result;
	NodeTag		type;

	if (token == NULL)			/* need to read a token? */
	{
		token = FUNC14(&tok_len);

		if (token == NULL)		/* end of input */
			return NULL;
	}

	type = FUNC11(token, tok_len);

	switch ((int) type)
	{
		case LEFT_BRACE:
			result = FUNC13();
			token = FUNC14(&tok_len);
			if (token == NULL || token[0] != '}')
				FUNC2(ERROR, "did not find '}' at end of input node");
			break;
		case LEFT_PAREN:
			{
				List	   *l = NIL;

				/*----------
				 * Could be an integer list:	(i int int ...)
				 * or an OID list:				(o int int ...)
				 * or a list of nodes/values:	(node node ...)
				 *----------
				 */
				token = FUNC14(&tok_len);
				if (token == NULL)
					FUNC2(ERROR, "unterminated List structure");
				if (tok_len == 1 && token[0] == 'i')
				{
					/* List of integers */
					for (;;)
					{
						int			val;
						char	   *endptr;

						token = FUNC14(&tok_len);
						if (token == NULL)
							FUNC2(ERROR, "unterminated List structure");
						if (token[0] == ')')
							break;
						val = (int) FUNC15(token, &endptr, 10);
						if (endptr != token + tok_len)
							FUNC2(ERROR, "unrecognized integer: \"%.*s\"",
								 tok_len, token);
						l = FUNC4(l, val);
					}
				}
				else if (tok_len == 1 && token[0] == 'o')
				{
					/* List of OIDs */
					for (;;)
					{
						Oid			val;
						char	   *endptr;

						token = FUNC14(&tok_len);
						if (token == NULL)
							FUNC2(ERROR, "unterminated List structure");
						if (token[0] == ')')
							break;
						val = (Oid) FUNC16(token, &endptr, 10);
						if (endptr != token + tok_len)
							FUNC2(ERROR, "unrecognized OID: \"%.*s\"",
								 tok_len, token);
						l = FUNC5(l, val);
					}
				}
				else
				{
					/* List of other node types */
					for (;;)
					{
						/* We have already scanned next token... */
						if (token[0] == ')')
							break;
						l = FUNC3(l, FUNC17(token, tok_len));
						token = FUNC14(&tok_len);
						if (token == NULL)
							FUNC2(ERROR, "unterminated List structure");
					}
				}
				result = (Node *) l;
				break;
			}
		case RIGHT_PAREN:
			FUNC2(ERROR, "unexpected right parenthesis");
			result = NULL;		/* keep compiler happy */
			break;
		case OTHER_TOKEN:
			if (tok_len == 0)
			{
				/* must be "<>" --- represents a null pointer */
				result = NULL;
			}
			else
			{
				FUNC2(ERROR, "unrecognized token: \"%.*s\"", tok_len, token);
				result = NULL;	/* keep compiler happy */
			}
			break;
		case T_Integer:

			/*
			 * we know that the token terminates on a char atoi will stop at
			 */
			result = (Node *) FUNC8(FUNC0(token));
			break;
		case T_Float:
			{
				char	   *fval = (char *) FUNC12(tok_len + 1);

				FUNC10(fval, token, tok_len);
				fval[tok_len] = '\0';
				result = (Node *) FUNC7(fval);
			}
			break;
		case T_String:
			/* need to remove leading and trailing quotes, and backslashes */
			result = (Node *) FUNC9(FUNC1(token + 1, tok_len - 2));
			break;
		case T_BitString:
			{
				char	   *val = FUNC12(tok_len);

				/* skip leading 'b' */
				FUNC10(val, token + 1, tok_len - 1);
				val[tok_len - 1] = '\0';
				result = (Node *) FUNC6(val);
				break;
			}
		default:
			FUNC2(ERROR, "unrecognized node type: %d", (int) type);
			result = NULL;		/* keep compiler happy */
			break;
	}

	return (void *) result;
}