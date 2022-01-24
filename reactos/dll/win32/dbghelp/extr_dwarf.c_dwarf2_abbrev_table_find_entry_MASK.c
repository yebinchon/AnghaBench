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
struct sparse_array {int dummy; } ;
typedef  int /*<<< orphan*/  dwarf2_abbrev_entry_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (struct sparse_array const*,unsigned long) ; 

__attribute__((used)) static dwarf2_abbrev_entry_t*
FUNC2(const struct sparse_array* abbrev_table,
                               unsigned long entry_code)
{
    FUNC0( NULL != abbrev_table );
    return FUNC1(abbrev_table, entry_code);
}