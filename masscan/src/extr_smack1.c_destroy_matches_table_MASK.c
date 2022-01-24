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
struct SmackMatches {struct SmackMatches* DEBUG_name; struct SmackMatches* m_ids; scalar_t__ m_count; } ;
struct SMACK {unsigned int m_state_count; struct SmackMatches* m_match; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct SmackMatches*) ; 

__attribute__((used)) static void
FUNC2(struct SMACK *smack)
{
    unsigned i;

    if (!smack->m_match)
        return;


    for (i=0; i<smack->m_state_count; i++) {
        struct SmackMatches *match;
        match = &smack->m_match[i];

        if (match->m_count) {
            FUNC1(match->m_ids);
        } else {
            FUNC0(match->m_ids == NULL);
        }
#ifdef DEBUG
        if (match->DEBUG_name)
            free(match->DEBUG_name);
#endif
    }

    FUNC1(smack->m_match);
    smack->m_match = 0;
}