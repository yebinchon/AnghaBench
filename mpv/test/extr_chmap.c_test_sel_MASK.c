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
struct mp_chmap_sel {int num_chmaps; int /*<<< orphan*/  member_0; } ;
struct mp_chmap {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int FUNC3 (struct mp_chmap*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mp_chmap_sel*,struct mp_chmap*) ; 
 int FUNC5 (struct mp_chmap_sel*,struct mp_chmap*) ; 
 int /*<<< orphan*/  FUNC6 (struct mp_chmap*) ; 

__attribute__((used)) static void FUNC7(const char *input, const char *expected_selection,
                     char **layouts)
{
    struct mp_chmap_sel s = {0};
    struct mp_chmap input_map;
    struct mp_chmap expected_map;

    FUNC1(FUNC3(&input_map, FUNC2(input)));
    FUNC1(FUNC3(&expected_map, FUNC2(expected_selection)));

    for (int n = 0; layouts[n]; n++) {
        struct mp_chmap tmp;
        FUNC1(FUNC3(&tmp, FUNC2(layouts[n])));
        int count = s.num_chmaps;
        FUNC4(&s, &tmp);
        FUNC1(s.num_chmaps > count); // assure validity and max. count
    }

    FUNC1(FUNC5(&s, &input_map));
    // We convert expected_map to a chmap and then back to a string to avoid
    // problems with ambiguous layouts.
    FUNC0(FUNC6(&input_map),
                        FUNC6(&expected_map));
}