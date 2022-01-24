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
typedef  size_t uint ;
typedef  int /*<<< orphan*/  qstr ;
typedef  scalar_t__ mp_obj_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ MP_OBJ_NULL ; 
 int /*<<< orphan*/  MP_QSTR___name__ ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,size_t) ; 
 int /*<<< orphan*/  mp_const_true ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ,scalar_t__*) ; 
 char* FUNC5 (size_t const) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 char* FUNC9 (scalar_t__,size_t*) ; 
 int /*<<< orphan*/  mp_type_ImportError ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,size_t const) ; 
 size_t FUNC12 (int /*<<< orphan*/ ) ; 
 char const* FUNC13 (int /*<<< orphan*/ ) ; 

mp_obj_t FUNC14(mp_obj_t module, qstr name) {
    FUNC0("import from %p %s\n", module, FUNC13(name));

    mp_obj_t dest[2];

    FUNC4(module, name, dest);

    if (dest[1] != MP_OBJ_NULL) {
        // Hopefully we can't import bound method from an object
import_error:
        FUNC10(FUNC8(&mp_type_ImportError, "cannot import name %q", name));
    }

    if (dest[0] != MP_OBJ_NULL) {
        return dest[0];
    }

    #if MICROPY_ENABLE_EXTERNAL_IMPORT

    // See if it's a package, then can try FS import
    if (!mp_obj_is_package(module)) {
        goto import_error;
    }

    mp_load_method_maybe(module, MP_QSTR___name__, dest);
    size_t pkg_name_len;
    const char *pkg_name = mp_obj_str_get_data(dest[0], &pkg_name_len);

    const uint dot_name_len = pkg_name_len + 1 + qstr_len(name);
    char *dot_name = mp_local_alloc(dot_name_len);
    memcpy(dot_name, pkg_name, pkg_name_len);
    dot_name[pkg_name_len] = '.';
    memcpy(dot_name + pkg_name_len + 1, qstr_str(name), qstr_len(name));
    qstr dot_name_q = qstr_from_strn(dot_name, dot_name_len);
    mp_local_free(dot_name);

    // For fromlist, pass sentinel "non empty" value to force returning of leaf module
    return mp_import_name(dot_name_q, mp_const_true, MP_OBJ_NEW_SMALL_INT(0));

    #else

    // Package import not supported with external imports disabled
    goto import_error;

    #endif
}