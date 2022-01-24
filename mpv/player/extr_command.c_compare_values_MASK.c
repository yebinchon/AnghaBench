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
struct m_option {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC2 (struct m_option*,void*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static bool FUNC4(struct m_option *type, void *a, void *b)
{
    // Since there is no m_option_equals() or anything similar, we convert all
    // values to a common, unambiguous representation - strings.
    char *as = FUNC2(type, a);
    char *bs = FUNC2(type, b);
    bool res = FUNC1(FUNC0(as), FUNC0(bs)); // treat as "" on failure
    FUNC3(as);
    FUNC3(bs);
    return res;
}