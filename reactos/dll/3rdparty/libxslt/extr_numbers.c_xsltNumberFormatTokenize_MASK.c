#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* xsltFormatPtr ;
typedef  scalar_t__ xmlChar ;
struct TYPE_7__ {int width; int /*<<< orphan*/  separator; int /*<<< orphan*/  token; } ;
struct TYPE_6__ {size_t nTokens; int /*<<< orphan*/ * end; TYPE_1__* tokens; int /*<<< orphan*/ * start; } ;
struct TYPE_5__ {int width; int token; int /*<<< orphan*/ * separator; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DEFAULT_SEPARATOR ; 
 int /*<<< orphan*/  DEFAULT_TOKEN ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 size_t MAX_TOKENS ; 
 TYPE_4__ default_token ; 
 int FUNC5 (int /*<<< orphan*/ *,scalar_t__ const*,int*) ; 
 void* FUNC6 (scalar_t__ const*,int) ; 

__attribute__((used)) static void
FUNC7(const xmlChar *format,
			 xsltFormatPtr tokens)
{
    int ix = 0;
    int j;
    int val;
    int len;

    default_token.token = DEFAULT_TOKEN;
    default_token.width = 1;
    default_token.separator = FUNC0(DEFAULT_SEPARATOR);


    tokens->start = NULL;
    tokens->tokens[0].separator = NULL;
    tokens->end = NULL;

    /*
     * Insert initial non-alphanumeric token.
     * There is always such a token in the list, even if NULL
     */
    while (! (FUNC4(val=FUNC5(NULL, format+ix, &len)) ||
	      FUNC1(val)) ) {
	if (format[ix] == 0)		/* if end of format string */
	    break; /* while */
	ix += len;
    }
    if (ix > 0)
	tokens->start = FUNC6(format, ix);


    for (tokens->nTokens = 0; tokens->nTokens < MAX_TOKENS;
	 tokens->nTokens++) {
	if (format[ix] == 0)
	    break; /* for */

	/*
	 * separator has already been parsed (except for the first
	 * number) in tokens->end, recover it.
	 */
	if (tokens->nTokens > 0) {
	    tokens->tokens[tokens->nTokens].separator = tokens->end;
	    tokens->end = NULL;
	}

	val = FUNC5(NULL, format+ix, &len);
	if (FUNC2(val) ||
		 FUNC3(val)) {
	    tokens->tokens[tokens->nTokens].width = 1;
	    while (FUNC3(val)) {
		tokens->tokens[tokens->nTokens].width++;
		ix += len;
		val = FUNC5(NULL, format+ix, &len);
	    }
	    if (FUNC2(val)) {
		tokens->tokens[tokens->nTokens].token = val - 1;
		ix += len;
		val = FUNC5(NULL, format+ix, &len);
	    }
	} else if ( (val == (xmlChar)'A') ||
		    (val == (xmlChar)'a') ||
		    (val == (xmlChar)'I') ||
		    (val == (xmlChar)'i') ) {
	    tokens->tokens[tokens->nTokens].token = val;
	    ix += len;
	    val = FUNC5(NULL, format+ix, &len);
	} else {
	    /* XSLT section 7.7
	     * "Any other format token indicates a numbering sequence
	     *  that starts with that token. If an implementation does
	     *  not support a numbering sequence that starts with that
	     *  token, it must use a format token of 1."
	     */
	    tokens->tokens[tokens->nTokens].token = (xmlChar)'0';
	    tokens->tokens[tokens->nTokens].width = 1;
	}
	/*
	 * Skip over remaining alphanumeric characters from the Nd
	 * (Number, decimal digit), Nl (Number, letter), No (Number,
	 * other), Lu (Letter, uppercase), Ll (Letter, lowercase), Lt
	 * (Letters, titlecase), Lm (Letters, modifiers), and Lo
	 * (Letters, other (uncased)) Unicode categories. This happens
	 * to correspond to the Letter and Digit classes from XML (and
	 * one wonders why XSLT doesn't refer to these instead).
	 */
	while (FUNC4(val) || FUNC1(val)) {
	    ix += len;
	    val = FUNC5(NULL, format+ix, &len);
	}

	/*
	 * Insert temporary non-alphanumeric final tooken.
	 */
	j = ix;
	while (! (FUNC4(val) || FUNC1(val))) {
	    if (val == 0)
		break; /* while */
	    ix += len;
	    val = FUNC5(NULL, format+ix, &len);
	}
	if (ix > j)
	    tokens->end = FUNC6(&format[j], ix - j);
    }
}