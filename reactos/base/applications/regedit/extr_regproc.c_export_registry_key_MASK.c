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
typedef  scalar_t__ WCHAR ;
typedef  scalar_t__ HKEY ;
typedef  int /*<<< orphan*/  FILE ;
typedef  scalar_t__ DWORD ;
typedef  scalar_t__ CHAR ;
typedef  scalar_t__ BYTE ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ ERROR_SUCCESS ; 
 scalar_t__* FUNC1 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ HKEY_CLASSES_ROOT ; 
 scalar_t__ HKEY_CURRENT_CONFIG ; 
 scalar_t__ HKEY_CURRENT_USER ; 
 scalar_t__ HKEY_DYN_DATA ; 
 scalar_t__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ KEY_MAX_LEN ; 
 int /*<<< orphan*/ * FUNC5 (scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__**,scalar_t__*,int /*<<< orphan*/ ) ; 
 unsigned int REG_CLASS_NUMBER ; 
 scalar_t__ REG_FORMAT_5 ; 
 scalar_t__ REG_VAL_BUF_SIZE ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__,scalar_t__*,scalar_t__*) ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,scalar_t__,scalar_t__**,scalar_t__*,scalar_t__**,scalar_t__*,scalar_t__**,scalar_t__*,scalar_t__**,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__*,scalar_t__*,scalar_t__**) ; 
 scalar_t__* reg_class_keys ; 
 scalar_t__** reg_class_namesW ; 
 int /*<<< orphan*/  stderr ; 

BOOL FUNC18(WCHAR *file_name, WCHAR *reg_key_name, DWORD format)
{
    WCHAR *reg_key_name_buf;
    WCHAR *val_name_buf;
    BYTE *val_buf;
    WCHAR *line_buf;
    DWORD reg_key_name_size = KEY_MAX_LEN;
    DWORD val_name_size = KEY_MAX_LEN;
    DWORD val_size = REG_VAL_BUF_SIZE;
    DWORD line_buf_size = KEY_MAX_LEN + REG_VAL_BUF_SIZE;
    FILE *file = NULL;
    BOOL unicode = (format == REG_FORMAT_5);

    reg_key_name_buf = FUNC3(FUNC2(), 0,
                                 reg_key_name_size  * sizeof(*reg_key_name_buf));
    val_name_buf = FUNC3(FUNC2(), 0,
                             val_name_size * sizeof(*val_name_buf));
    val_buf = FUNC3(FUNC2(), 0, val_size);
    line_buf = FUNC3(FUNC2(), 0, line_buf_size * sizeof(*line_buf));
    FUNC0(reg_key_name_buf && val_name_buf && val_buf && line_buf);

    if (reg_key_name && reg_key_name[0]) {
        HKEY reg_key_class;
        WCHAR *branch_name = NULL;
        HKEY key;

        FUNC7(&reg_key_name_buf, &reg_key_name_size,
                                   FUNC16(reg_key_name));
        FUNC15(reg_key_name_buf, reg_key_name);

        /* open the specified key */
        if (!FUNC17(reg_key_name, &reg_key_class, &branch_name)) {
            CHAR* key_nameA = FUNC1(reg_key_name);
            FUNC13(stderr,"%S: Incorrect registry class specification in '%s'\n",
                    FUNC14(), key_nameA);
            FUNC4(FUNC2(), 0, key_nameA);
            FUNC10(1);
        }
        if (!branch_name[0]) {
            /* no branch - registry class is specified */
            file = FUNC5(file_name, unicode);
            FUNC11(file, reg_key_class,
                        &reg_key_name_buf, &reg_key_name_size,
                        &val_name_buf, &val_name_size,
                        &val_buf, &val_size, &line_buf,
                        &line_buf_size, unicode);
        } else if (FUNC9(reg_key_class, branch_name, &key) == ERROR_SUCCESS) {
            file = FUNC5(file_name, unicode);
            FUNC11(file, key,
                        &reg_key_name_buf, &reg_key_name_size,
                        &val_name_buf, &val_name_size,
                        &val_buf, &val_size, &line_buf,
                        &line_buf_size, unicode);
            FUNC8(key);
        } else {
            CHAR* key_nameA = FUNC1(reg_key_name);
            FUNC13(stderr,"%S: Can't export. Registry key '%s' does not exist!\n",
                    FUNC14(), key_nameA);
            FUNC4(FUNC2(), 0, key_nameA);
            FUNC6();
        }
    } else {
        unsigned int i;

        /* export all registry classes */
        file = FUNC5(file_name, unicode);
        for (i = 0; i < REG_CLASS_NUMBER; i++) {
            /* do not export HKEY_CLASSES_ROOT */
            if (reg_class_keys[i] != HKEY_CLASSES_ROOT &&
                    reg_class_keys[i] != HKEY_CURRENT_USER &&
                    reg_class_keys[i] != HKEY_CURRENT_CONFIG &&
                    reg_class_keys[i] != HKEY_DYN_DATA) {
                FUNC15(reg_key_name_buf, reg_class_namesW[i]);
                FUNC11(file, reg_class_keys[i],
                            &reg_key_name_buf, &reg_key_name_size,
                            &val_name_buf, &val_name_size,
                            &val_buf, &val_size, &line_buf,
                            &line_buf_size, unicode);
            }
        }
    }

    if (file) {
        FUNC12(file);
    }
    FUNC4(FUNC2(), 0, reg_key_name);
    FUNC4(FUNC2(), 0, val_name_buf);
    FUNC4(FUNC2(), 0, val_buf);
    FUNC4(FUNC2(), 0, line_buf);
    return TRUE;
}