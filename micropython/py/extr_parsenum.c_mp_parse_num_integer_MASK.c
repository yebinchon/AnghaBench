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
typedef  int /*<<< orphan*/  vstr_t ;
typedef  char mp_uint_t ;
typedef  int /*<<< orphan*/  mp_print_t ;
typedef  int /*<<< orphan*/  mp_obj_t ;
typedef  int /*<<< orphan*/  mp_lexer_t ;
typedef  int mp_int_t ;
typedef  char byte ;

/* Variables and functions */
 scalar_t__ MICROPY_ERROR_REPORTING ; 
 scalar_t__ MICROPY_ERROR_REPORTING_NORMAL ; 
 scalar_t__ MICROPY_ERROR_REPORTING_TERSE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char const**,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char const*,int,int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 scalar_t__ FUNC10 (int,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char const*,int,int) ; 
 int /*<<< orphan*/  mp_type_ValueError ; 
 int /*<<< orphan*/  mp_type_str ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (char const) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 

mp_obj_t FUNC15(const char *restrict str_, size_t len, int base, mp_lexer_t *lex) {
    const byte *restrict str = (const byte *)str_;
    const byte *restrict top = str + len;
    bool neg = false;
    mp_obj_t ret_val;

    // check radix base
    if ((base != 0 && base < 2) || base > 36) {
        // this won't be reached if lex!=NULL
        FUNC9("int() arg 2 must be >= 2 and <= 36");
    }

    // skip leading space
    for (; str < top && FUNC13(*str); str++) {
    }

    // parse optional sign
    if (str < top) {
        if (*str == '+') {
            str++;
        } else if (*str == '-') {
            str++;
            neg = true;
        }
    }

    // parse optional base prefix
    str += FUNC7((const char*)str, top - str, &base);

    // string should be an integer number
    mp_int_t int_val = 0;
    const byte *restrict str_val_start = str;
    for (; str < top; str++) {
        // get next digit as a value
        mp_uint_t dig = *str;
        if ('0' <= dig && dig <= '9') {
            dig -= '0';
        } else if (dig == '_') {
            continue;
        } else {
            dig |= 0x20; // make digit lower-case
            if ('a' <= dig && dig <= 'z') {
                dig -= 'a' - 10;
            } else {
                // unknown character
                break;
            }
        }
        if (dig >= (mp_uint_t)base) {
            break;
        }

        // add next digi and check for overflow
        if (FUNC10(int_val, base)) {
            goto overflow;
        }
        int_val = int_val * base + dig;
        if (!FUNC1(int_val)) {
            goto overflow;
        }
    }

    // negate value if needed
    if (neg) {
        int_val = -int_val;
    }

    // create the small int
    ret_val = FUNC0(int_val);

have_ret_val:
    // check we parsed something
    if (str == str_val_start) {
        goto value_error;
    }

    // skip trailing space
    for (; str < top && FUNC13(*str); str++) {
    }

    // check we reached the end of the string
    if (str != top) {
        goto value_error;
    }

    // return the object
    return ret_val;

overflow:
    // reparse using long int
    {
        const char *s2 = (const char*)str_val_start;
        ret_val = FUNC5(&s2, top - str_val_start, neg, base);
        str = (const byte*)s2;
        goto have_ret_val;
    }

value_error:
    if (MICROPY_ERROR_REPORTING == MICROPY_ERROR_REPORTING_TERSE) {
        mp_obj_t exc = FUNC3(&mp_type_ValueError,
            "invalid syntax for integer");
        FUNC12(exc, lex);
    } else if (MICROPY_ERROR_REPORTING == MICROPY_ERROR_REPORTING_NORMAL) {
        mp_obj_t exc = FUNC4(&mp_type_ValueError,
            "invalid syntax for integer with base %d", base);
        FUNC12(exc, lex);
    } else {
        vstr_t vstr;
        mp_print_t print;
        FUNC14(&vstr, 50, &print);
        FUNC8(&print, "invalid syntax for integer with base %d: ", base);
        FUNC11(&print, str_val_start, top - str_val_start, true);
        mp_obj_t exc = FUNC2(&mp_type_ValueError,
            FUNC6(&mp_type_str, &vstr));
        FUNC12(exc, lex);
    }
}