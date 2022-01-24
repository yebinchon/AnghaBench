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

/* Variables and functions */
 int NN_WS_HANDSHAKE_MATCH ; 
 int NN_WS_HANDSHAKE_NOMATCH ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char const*) ; 
 char* FUNC2 (char const*,char const*) ; 

__attribute__((used)) static int FUNC3 (const char* termseq, const char **subj,
    int ignore_leading_sp, int ignore_trailing_sp, const char **addr,
    size_t* const len)
{
    const char *start;
    const char *end;

    FUNC0 (termseq && *subj);

    start = *subj;
    if (addr)
        *addr = NULL;
    if (len)
        *len = 0;

    /*  Find first occurence of termination sequence. */
    end = FUNC2 (start, termseq);

    /*  Was a termination sequence found? */
    if (end) {
        *subj = end + FUNC1 (termseq);
    }
    else {
        return NN_WS_HANDSHAKE_NOMATCH;
    }
        
    if (ignore_leading_sp) {
        while (*start == '\x20' && start < end) {
            start++;
        }
    }

    if (addr)
        *addr = start;

    /*  In this special case, the value was "found", but is just empty or
        ignored space. */
    if (start == end)
        return NN_WS_HANDSHAKE_MATCH;

    if (ignore_trailing_sp) {
        while (*(end - 1) == '\x20' && start < end) {
            end--;
        }
    }

    if (len)
        *len = end - start;

    return NN_WS_HANDSHAKE_MATCH;
}