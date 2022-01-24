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
struct mp_chmap {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (struct mp_chmap*,struct mp_chmap*) ; 
 scalar_t__ FUNC2 (struct mp_chmap*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mp_chmap*) ; 
 char* FUNC4 (char*,size_t,struct mp_chmap*) ; 
 scalar_t__** std_layout_names ; 

char *FUNC5(char *buf, size_t buf_size, const struct mp_chmap *src)
{
    struct mp_chmap map = *src;
    FUNC3(&map);
    for (int n = 0; std_layout_names[n][0]; n++) {
        struct mp_chmap s;
        if (FUNC2(&s, FUNC0(std_layout_names[n][0])) &&
            FUNC1(&s, &map))
        {
            map = s;
            break;
        }
    }
    return FUNC4(buf, buf_size, &map);
}