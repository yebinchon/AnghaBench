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
struct SMACK {scalar_t__ is_nocase; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct SMACK*,unsigned char const) ; 
 unsigned char const FUNC1 (unsigned char const) ; 

__attribute__((used)) static void
FUNC2(struct SMACK *smack, const unsigned char *pattern, unsigned pattern_length)
{
    unsigned i;

    /* Add all the bytes in this pattern to the symbol table */
    for (i=0; i<pattern_length; i++) {
        if (smack->is_nocase)
            FUNC0(smack, FUNC1(pattern[i]));
        else
            FUNC0(smack, pattern[i]);
    }
}