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
typedef  int /*<<< orphan*/  mp_obj_type_t ;
typedef  scalar_t__ mp_obj_t ;
typedef  scalar_t__ mp_int_t ;
typedef  int /*<<< orphan*/  byte ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__ const,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int len ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*,char const*,size_t) ; 
 scalar_t__ mp_const_none ; 
 scalar_t__ FUNC3 (scalar_t__ const) ; 
 int /*<<< orphan*/  const* FUNC4 (scalar_t__ const) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int) ; 
 char* FUNC8 (scalar_t__,size_t*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  const* s ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/  const) ; 

mp_obj_t FUNC11(size_t n_args, const mp_obj_t *args) {
    const mp_obj_type_t *self_type = FUNC4(args[0]);
    mp_int_t splits = -1;
    mp_obj_t sep = mp_const_none;
    if (n_args > 1) {
        sep = args[1];
        if (n_args > 2) {
            splits = FUNC3(args[2]);
        }
    }

    mp_obj_t res = FUNC6(0, NULL);
    FUNC0(args[0], s, len);
    const byte *top = s + len;

    if (sep == mp_const_none) {
        // sep not given, so separate on whitespace

        // Initial whitespace is not counted as split, so we pre-do it
        while (s < top && FUNC10(*s)) s++;
        while (s < top && splits != 0) {
            const byte *start = s;
            while (s < top && !FUNC10(*s)) s++;
            FUNC5(res, FUNC7(self_type, start, s - start));
            if (s >= top) {
                break;
            }
            while (s < top && FUNC10(*s)) s++;
            if (splits > 0) {
                splits--;
            }
        }

        if (s < top) {
            FUNC5(res, FUNC7(self_type, s, top - s));
        }

    } else {
        // sep given
        if (FUNC4(sep) != self_type) {
            FUNC1(sep);
        }

        size_t sep_len;
        const char *sep_str = FUNC8(sep, &sep_len);

        if (sep_len == 0) {
            FUNC9("empty separator");
        }

        for (;;) {
            const byte *start = s;
            for (;;) {
                if (splits == 0 || s + sep_len > top) {
                    s = top;
                    break;
                } else if (FUNC2(s, sep_str, sep_len) == 0) {
                    break;
                }
                s++;
            }
            FUNC5(res, FUNC7(self_type, start, s - start));
            if (s >= top) {
                break;
            }
            s += sep_len;
            if (splits > 0) {
                splits--;
            }
        }
    }

    return res;
}