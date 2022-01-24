#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vstr_t ;
typedef  int /*<<< orphan*/  qstr ;
typedef  int /*<<< orphan*/  mp_print_t ;
typedef  int /*<<< orphan*/  mp_obj_type_t ;
typedef  int /*<<< orphan*/  mp_obj_t ;
struct TYPE_6__ {int /*<<< orphan*/  hash; scalar_t__ data; } ;
typedef  TYPE_1__ mp_obj_str_t ;
struct TYPE_7__ {int /*<<< orphan*/  len; scalar_t__ buf; } ;
typedef  TYPE_2__ mp_buffer_info_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MP_BUFFER_READ ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MP_QSTR_ ; 
 int /*<<< orphan*/  MP_QSTRnull ; 
 int /*<<< orphan*/  PRINT_STR ; 
 int /*<<< orphan*/  FUNC5 (size_t,size_t,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/  const,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/  const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mp_type_UnicodeError ; 
 int /*<<< orphan*/  mp_type_bytes ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ str_data ; 
 int /*<<< orphan*/  str_hash ; 
 int /*<<< orphan*/  str_len ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 

mp_obj_t FUNC18(const mp_obj_type_t *type, size_t n_args, size_t n_kw, const mp_obj_t *args) {
#if MICROPY_CPYTHON_COMPAT
    if (n_kw != 0) {
        mp_arg_error_unimpl_kw();
    }
#endif

    FUNC5(n_args, n_kw, 0, 3, false);

    switch (n_args) {
        case 0:
            return FUNC3(MP_QSTR_);

        case 1: {
            vstr_t vstr;
            mp_print_t print;
            FUNC17(&vstr, 16, &print);
            FUNC12(&print, args[0], PRINT_STR);
            return FUNC11(type, &vstr);
        }

        default: // 2 or 3 args
            // TODO: validate 2nd/3rd args
            if (FUNC8(args[0], &mp_type_bytes)) {
                FUNC0(args[0], str_data, str_len);
                FUNC1(args[0], str_hash);
                if (str_hash == 0) {
                    str_hash = FUNC14(str_data, str_len);
                }
                #if MICROPY_PY_BUILTINS_STR_UNICODE_CHECK
                if (!utf8_check(str_data, str_len)) {
                    mp_raise_msg(&mp_type_UnicodeError, NULL);
                }
                #endif

                // Check if a qstr with this data already exists
                qstr q = FUNC15((const char*)str_data, str_len);
                if (q != MP_QSTRnull) {
                    return FUNC3(q);
                }

                mp_obj_str_t *o = FUNC4(FUNC10(type, NULL, str_len));
                o->data = str_data;
                o->hash = str_hash;
                return FUNC2(o);
            } else {
                mp_buffer_info_t bufinfo;
                FUNC7(args[0], &bufinfo, MP_BUFFER_READ);
                #if MICROPY_PY_BUILTINS_STR_UNICODE_CHECK
                if (!utf8_check(bufinfo.buf, bufinfo.len)) {
                    mp_raise_msg(&mp_type_UnicodeError, NULL);
                }
                #endif
                return FUNC9(bufinfo.buf, bufinfo.len);
            }
    }
}