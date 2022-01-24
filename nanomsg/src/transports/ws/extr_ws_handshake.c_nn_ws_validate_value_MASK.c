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
 size_t FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char const) ; 

__attribute__((used)) static int FUNC2 (const char* expected, const char *subj,
    size_t subj_len, int case_insensitive)
{
    if (FUNC0 (expected) != subj_len)
        return NN_WS_HANDSHAKE_NOMATCH;

    if (case_insensitive) {
        while (*expected && *subj) {
            if (FUNC1 (*expected) != FUNC1 (*subj))
                return NN_WS_HANDSHAKE_NOMATCH;
            expected++;
            subj++;
        }
    }
    else {
        while (*expected && *subj) {
            if (*expected != *subj)
                return NN_WS_HANDSHAKE_NOMATCH;
            expected++;
            subj++;
        }
    }

    return NN_WS_HANDSHAKE_MATCH;
}