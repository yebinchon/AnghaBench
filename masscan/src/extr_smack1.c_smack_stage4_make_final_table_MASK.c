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
typedef  scalar_t__ transition_t ;
struct SMACK {unsigned int m_state_count; unsigned char* char_to_symbol; int row_shift; scalar_t__* table; int /*<<< orphan*/  symbol_count; } ;

/* Variables and functions */
 unsigned int ALPHABET_SIZE ; 
 unsigned int FUNC0 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC6(struct SMACK *smack)
{
    unsigned row;
    unsigned row_count = smack->m_state_count;
    unsigned column_count;
    transition_t *table;
    unsigned char *char_to_symbol = smack->char_to_symbol;

    /*
     * Figure out the row-size-shift. Instead of doing a multiply by the
     * row-width, we expand it out to the nearest pattern of two, and
     * then use shifts instead of multiplies.
     */
    smack->row_shift = FUNC5(smack->symbol_count);
    column_count = 1 << smack->row_shift;

    /*
     * Allocate table:
     * rows*columns
     */
    table = FUNC3(sizeof(transition_t) * row_count * column_count);
    if (table == NULL) {
        FUNC2(stderr, "%s: out of memory error\n", "smack");
        FUNC1(1);
    }
    FUNC4(table, 0, sizeof(transition_t) * row_count * column_count);


    for (row=0; row<row_count; row++) {
        unsigned col;

        for (col=0; col<ALPHABET_SIZE; col++) {
            unsigned transition;
            unsigned symbol = char_to_symbol[col];

            transition = FUNC0(row,col);

            *(table + row*column_count + symbol) = (transition_t)transition;
        }
    }

    smack->table = table;
}