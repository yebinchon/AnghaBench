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
typedef  size_t qstr ;
typedef  int /*<<< orphan*/  mp_print_t ;
typedef  int /*<<< orphan*/  mp_obj_t ;

/* Variables and functions */
 size_t MP_QSTRnull ; 
 int /*<<< orphan*/  PRINT_EXC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,size_t*,size_t**) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*,char*,size_t,...) ; 

void FUNC6(const mp_print_t *print, mp_obj_t exc) {
    if (FUNC2(exc)) {
        size_t n, *values;
        FUNC1(exc, &n, &values);
        if (n > 0) {
            FUNC0(n % 3 == 0);
            FUNC4(print, "Traceback (most recent call last):\n");
            for (int i = n - 3; i >= 0; i -= 3) {
#if MICROPY_ENABLE_SOURCE_LINE
                mp_printf(print, "  File \"%q\", line %d", values[i], (int)values[i + 1]);
#else
                FUNC5(print, "  File \"%q\"", values[i]);
#endif
                // the block name can be NULL if it's unknown
                qstr block = values[i + 2];
                if (block == MP_QSTRnull) {
                    FUNC4(print, "\n");
                } else {
                    FUNC5(print, ", in %q\n", block);
                }
            }
        }
    }
    FUNC3(print, exc, PRINT_EXC);
    FUNC4(print, "\n");
}