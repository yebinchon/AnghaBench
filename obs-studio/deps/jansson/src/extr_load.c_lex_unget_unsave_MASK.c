#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  saved_text; int /*<<< orphan*/  stream; } ;
typedef  TYPE_1__ lex_t ;

/* Variables and functions */
 int STREAM_STATE_EOF ; 
 int STREAM_STATE_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 char FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC3(lex_t *lex, int c)
{
    if(c != STREAM_STATE_EOF && c != STREAM_STATE_ERROR) {
        /* Since we treat warnings as errors, when assertions are turned
         * off the "d" variable would be set but never used. Which is
         * treated as an error by GCC.
         */
        #ifndef NDEBUG
        char d;
        #endif
        FUNC2(&lex->stream, c);
        #ifndef NDEBUG
        d =
        #endif
            FUNC1(&lex->saved_text);
        FUNC0(c == d);
    }
}