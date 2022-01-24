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
struct SmackPattern {scalar_t__ is_anchor_end; scalar_t__ is_anchor_begin; scalar_t__ pattern_length; } ;
struct SMACK {int m_state_max; scalar_t__ is_anchor_begin; struct SmackPattern** m_pattern_list; scalar_t__ m_pattern_count; int /*<<< orphan*/ * char_to_symbol; scalar_t__ is_nocase; scalar_t__ is_anchor_end; } ;

/* Variables and functions */
 int /*<<< orphan*/  BASE_STATE ; 
 int /*<<< orphan*/  CHAR_ANCHOR_END ; 
 int /*<<< orphan*/  CHAR_ANCHOR_START ; 
 int /*<<< orphan*/  UNANCHORED_STATE ; 
 int /*<<< orphan*/  FUNC0 (struct SMACK*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct SMACK*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct SMACK*) ; 
 int /*<<< orphan*/  FUNC3 (struct SMACK*) ; 
 int /*<<< orphan*/  FUNC4 (struct SMACK*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct SMACK*) ; 
 int /*<<< orphan*/  FUNC6 (struct SMACK*) ; 
 int /*<<< orphan*/  FUNC7 (struct SMACK*) ; 
 int /*<<< orphan*/  FUNC8 (struct SMACK*) ; 
 int /*<<< orphan*/  FUNC9 (struct SMACK*) ; 
 int /*<<< orphan*/  FUNC10 (struct SMACK*) ; 
 int /*<<< orphan*/  FUNC11 (struct SMACK*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC12 (unsigned int) ; 

void
FUNC13(struct SMACK *smack)
{
    unsigned i;

    /*
     * Fix up the symbol table to handle "anchors" and "nocase" conditions.
     */
    if (smack->is_anchor_begin)
        FUNC4(smack, CHAR_ANCHOR_START);
    if (smack->is_anchor_end)
        FUNC4(smack, CHAR_ANCHOR_END);
    if (smack->is_nocase) {
        for (i='A'; i<='Z'; i++) {
            smack->char_to_symbol[i] = smack->char_to_symbol[FUNC12(i)];
        }
    }


    /*
     * Calculate the maximum possible number of states. This will be somewhat
     * larger than the number of states we'll actually use because there can
     * be overlaps
     */
    smack->m_state_max = 1;
    for (i=0; i<(int)smack->m_pattern_count; i++) {
        struct SmackPattern *pat = smack->m_pattern_list[i];

        smack->m_state_max += pat->pattern_length;
        smack->m_state_max += pat->is_anchor_begin;
        smack->m_state_max += pat->is_anchor_end;
    }

    /*
     * Allocate a state-table that can hold that number of states
     */
    FUNC0(smack, smack->m_state_max);
    FUNC1(smack, smack->m_state_max);


    /*
     * Go through the various compilation stages
     */
    FUNC6(smack);
    FUNC7(smack);
    FUNC8(smack);


    /* If we have an anchor pattern, then swap
     * the first two states. */
    if (smack->is_anchor_begin) {
        FUNC11(smack, BASE_STATE, UNANCHORED_STATE);
    }

    /* prettify table for debugging */
    FUNC9(smack);

    /*
     * Build the final table we use for evaluation
     */
    FUNC10(smack);
    
    /*
     * Fixup the wildcard states
     */
    FUNC5(smack);

    /*
     * Get rid of the original pattern tables, since we no longer need them.
     * However, if this is a debug build, keep the tables around to make
     * debugging easier
     */
#ifndef DEBUG
    FUNC3(smack);
    FUNC2(smack);
#endif
}