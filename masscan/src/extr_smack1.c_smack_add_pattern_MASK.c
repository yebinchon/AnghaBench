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
struct SmackPattern {unsigned int pattern_length; int is_anchor_begin; int is_anchor_end; int is_snmp_hack; int is_wildcards; size_t id; int /*<<< orphan*/  pattern; } ;
struct SMACK {int is_anchor_begin; int is_anchor_end; int m_pattern_count; int m_pattern_max; struct SmackPattern** m_pattern_list; int /*<<< orphan*/  is_nocase; } ;

/* Variables and functions */
 unsigned int SMACK_ANCHOR_BEGIN ; 
 unsigned int SMACK_ANCHOR_END ; 
 unsigned int SMACK_SNMP_HACK ; 
 unsigned int SMACK_WILDCARDS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct SmackPattern**) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char const*,unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct SmackPattern**,struct SmackPattern**,int) ; 
 int /*<<< orphan*/  FUNC6 (struct SMACK*,unsigned char const*,int) ; 
 int /*<<< orphan*/  stderr ; 

void
FUNC7(
    struct SMACK *  smack,
    const void *    v_pattern,
    unsigned        pattern_length,
    size_t          id,
    unsigned        flags)
{
    const unsigned char *pattern = (const unsigned char*)v_pattern;
    struct SmackPattern *pat;


    /*
     * Create a pattern structure based on the input
     */
    pat = (struct SmackPattern *)FUNC4(sizeof (struct SmackPattern));
    if (pat == NULL) {
        FUNC1(stderr, "%s: out of memory error\n", "smack");
        FUNC0(1);
    }
    pat->pattern_length = pattern_length;
    pat->is_anchor_begin = ((flags & SMACK_ANCHOR_BEGIN) > 0);
    pat->is_anchor_end = ((flags & SMACK_ANCHOR_END) > 0);
    pat->is_snmp_hack = ((flags & SMACK_SNMP_HACK) > 0);
    pat->is_wildcards = ((flags & SMACK_WILDCARDS) > 0);
    pat->id = id;
    pat->pattern = FUNC3(pattern, pattern_length, smack->is_nocase);
    if (pat->is_anchor_begin)
        smack->is_anchor_begin = 1;
    if (pat->is_anchor_end)
        smack->is_anchor_end = 1;


    /*
     * Register the symbols used in the pattern. Hopefully, not all 256
     * possible combinations will be used, allowing us to shrink the
     * size of the rows in the final table
     */
    FUNC6(smack, pattern, pattern_length);
    if (pat->is_snmp_hack)
        FUNC6(smack, (const unsigned char *)"\x80", 1);


    /*
     * Automatically expand the table in order to hold more patterns,
     * as the caller keeps adding more.
     */
    if (smack->m_pattern_count + 1 >= smack->m_pattern_max) {
        struct SmackPattern **new_list;
        unsigned new_max;

        new_max = smack->m_pattern_max * 2 + 1;
        new_list = (struct SmackPattern **)FUNC4(sizeof(*new_list)*new_max);
        if (new_list == NULL) {
            FUNC1(stderr, "%s: out of memory error\n", "smack");
            FUNC0(1);
        }

        if (smack->m_pattern_list) {
            FUNC5(    new_list,
                    smack->m_pattern_list,
                    sizeof(*new_list) * smack->m_pattern_count);
            FUNC2(smack->m_pattern_list);
        }

        smack->m_pattern_list = new_list;
        smack->m_pattern_max = new_max;
    }


    /*
     * Put this pattern onto the end of our list
     */
    smack->m_pattern_list[smack->m_pattern_count] = pat;
    smack->m_pattern_count++;
}