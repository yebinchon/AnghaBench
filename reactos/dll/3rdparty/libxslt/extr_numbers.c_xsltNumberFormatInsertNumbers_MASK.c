#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* xsltNumberDataPtr ;
typedef  TYPE_2__* xsltFormatTokenPtr ;
typedef  TYPE_3__* xsltFormatPtr ;
typedef  int /*<<< orphan*/  xmlBufferPtr ;
struct TYPE_11__ {int nTokens; int /*<<< orphan*/ * end; TYPE_2__* tokens; int /*<<< orphan*/ * start; } ;
struct TYPE_10__ {int /*<<< orphan*/  width; int /*<<< orphan*/  token; int /*<<< orphan*/ * separator; } ;
struct TYPE_9__ {int /*<<< orphan*/  groupingCharacterLen; int /*<<< orphan*/  groupingCharacter; int /*<<< orphan*/  digitsPerGroup; } ;

/* Variables and functions */
 char* DEFAULT_SEPARATOR ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_2__ default_token ; 
 double FUNC1 (double) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (double) ; 
 int /*<<< orphan*/  FUNC5 (double) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,double,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,double,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,double,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void
FUNC10(xsltNumberDataPtr data,
			      double *numbers,
			      int numbers_max,
			      xsltFormatPtr tokens,
			      xmlBufferPtr buffer)
{
    int i = 0;
    double number;
    xsltFormatTokenPtr token;

    /*
     * Handle initial non-alphanumeric token
     */
    if (tokens->start != NULL)
	 FUNC3(buffer, tokens->start);

    for (i = 0; i < numbers_max; i++) {
	/* Insert number */
	number = numbers[(numbers_max - 1) - i];
        /* Round to nearest like XSLT 2.0 */
        number = FUNC1(number + 0.5);
        /*
         * XSLT 1.0 isn't clear on how to handle negative numbers, but XSLT
         * 2.0 says:
         *
         *     It is a non-recoverable dynamic error if any undiscarded item
         *     in the atomized sequence supplied as the value of the value
         *     attribute of xsl:number cannot be converted to an integer, or
         *     if the resulting integer is less than 0 (zero).
         */
        if (number < 0.0) {
            FUNC9(NULL, NULL, NULL,
                    "xsl-number : negative value\n");
            /* Recover by treating negative values as zero. */
            number = 0.0;
        }
	if (i < tokens->nTokens) {
	  /*
	   * The "n"th format token will be used to format the "n"th
	   * number in the list
	   */
	  token = &(tokens->tokens[i]);
	} else if (tokens->nTokens > 0) {
	  /*
	   * If there are more numbers than format tokens, then the
	   * last format token will be used to format the remaining
	   * numbers.
	   */
	  token = &(tokens->tokens[tokens->nTokens - 1]);
	} else {
	  /*
	   * If there are no format tokens, then a format token of
	   * 1 is used to format all numbers.
	   */
	  token = &default_token;
	}

	/* Print separator, except for the first number */
	if (i > 0) {
	    if (token->separator != NULL)
		FUNC3(buffer, token->separator);
	    else
		FUNC2(buffer, DEFAULT_SEPARATOR);
	}

	switch (FUNC4(number)) {
	case -1:
	    FUNC2(buffer, "-Infinity");
	    break;
	case 1:
	    FUNC2(buffer, "Infinity");
	    break;
	default:
	    if (FUNC5(number)) {
		FUNC2(buffer, "NaN");
	    } else {

		switch (token->token) {
		case 'A':
		    FUNC6(data, buffer, number, TRUE);
		    break;
		case 'a':
		    FUNC6(data, buffer, number, FALSE);
		    break;
		case 'I':
		    FUNC8(data, buffer, number, TRUE);
		    break;
		case 'i':
		    FUNC8(data, buffer, number, FALSE);
		    break;
		default:
		    if (FUNC0(token->token)) {
			FUNC7(buffer,
						number,
						token->token,
						token->width,
						data->digitsPerGroup,
						data->groupingCharacter,
						data->groupingCharacterLen);
		    }
		    break;
		}
	    }

	}
    }

    /*
     * Handle final non-alphanumeric token
     */
    if (tokens->end != NULL)
	 FUNC3(buffer, tokens->end);

}