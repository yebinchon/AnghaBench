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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int EOF ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (int) ; 
 int FUNC7 (int) ; 
 scalar_t__ FUNC8 (int) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC11(FILE *fp, char *buffer, size_t buflen)
{

    char *endp;
    char *p;
    int c;
    int ok;

    /*
     * Fill buffer with the leftmost matching part in regexp
     *
     *     \s*[+-]? ( [0-9]*\.[0-9]+([eE][+-]?[0-9]+)
     *              | nan  (  \([:alphanum:_]*\) )?
     *              | inf(inity)?
     *              )
     *
     * case-insensitively.
     *
     * The "do { ... } while (0)" wrapping in macros ensures that they behave
     * properly eg. in "if ... else" structures.
     */

#define END_MATCH()                                                         \
        goto buffer_filled

#define NEXT_CHAR()                                                         \
        do {                                                                \
            if (c == EOF || endp >= buffer + buflen - 1)            \
                END_MATCH();                                                \
            *endp++ = (char)c;                                              \
            c = getc(fp);                                                   \
        } while (0)

#define MATCH_ALPHA_STRING_NOCASE(string)                                   \
        do {                                                                \
            for (p=(string); *p!='\0' && (c==*p || c+('a'-'A')==*p); ++p)   \
                NEXT_CHAR();                                                \
            if (*p != '\0') END_MATCH();                                    \
        } while (0)

#define MATCH_ONE_OR_NONE(condition)                                        \
        do { if (condition) NEXT_CHAR(); } while (0)

#define MATCH_ONE_OR_MORE(condition)                                        \
        do {                                                                \
            ok = 0;                                                         \
            while (condition) { NEXT_CHAR(); ok = 1; }                      \
            if (!ok) END_MATCH();                                           \
        } while (0)

#define MATCH_ZERO_OR_MORE(condition)                                       \
        while (condition) { NEXT_CHAR(); }

    /* 1. emulate fscanf EOF handling */
    c = FUNC9(fp);
    if (c == EOF) {
        return EOF;
    }
    /* 2. consume leading whitespace unconditionally */
    while (FUNC8(c)) {
        c = FUNC9(fp);
    }

    /* 3. start reading matching input to buffer */
    endp = buffer;

    /* 4.1 sign (optional) */
    MATCH_ONE_OR_NONE(c == '+' || c == '-');

    /* 4.2 nan, inf, infinity; [case-insensitive] */
    if (c == 'n' || c == 'N') {
        NEXT_CHAR();
        MATCH_ALPHA_STRING_NOCASE("an");

        /* accept nan([:alphanum:_]*), similarly to strtod */
        if (c == '(') {
            NEXT_CHAR();
            MATCH_ZERO_OR_MORE(FUNC6(c) || c == '_');
            if (c == ')') {
                NEXT_CHAR();
            }
        }
        END_MATCH();
    }
    else if (c == 'i' || c == 'I') {
        NEXT_CHAR();
        MATCH_ALPHA_STRING_NOCASE("nfinity");
        END_MATCH();
    }

    /* 4.3 mantissa */
    MATCH_ZERO_OR_MORE(FUNC7(c));

    if (c == '.') {
        NEXT_CHAR();
        MATCH_ONE_OR_MORE(FUNC7(c));
    }

    /* 4.4 exponent */
    if (c == 'e' || c == 'E') {
        NEXT_CHAR();
        MATCH_ONE_OR_NONE(c == '+' || c == '-');
        MATCH_ONE_OR_MORE(FUNC7(c));
    }

    END_MATCH();

buffer_filled:

    FUNC10(c, fp);
    *endp = '\0';

    /* return 1 if something read, else 0 */
    return (buffer == endp) ? 0 : 1;
}