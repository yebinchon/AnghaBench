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
typedef  char WCHAR ;
typedef  scalar_t__ LONG ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  int /*<<< orphan*/  FILE ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ ERROR_MORE_DATA ; 
 scalar_t__ ERROR_NO_MORE_ITEMS ; 
 scalar_t__ ERROR_SUCCESS ; 
 scalar_t__ FALSE ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char**,int*,int*,int,int /*<<< orphan*/ *,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char**,int*,int*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int*,int) ; 
 int /*<<< orphan*/  FUNC7 (char**,int*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
#define  REG_BINARY 132 
#define  REG_DWORD 131 
#define  REG_EXPAND_SZ 130 
#define  REG_MULTI_SZ 129 
#define  REG_SZ 128 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int,char*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int,char*,int*,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (char*,char const*) ; 
 int FUNC17 (char const*) ; 
 int /*<<< orphan*/  FUNC18 (char*,char const*,...) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC19 (char*) ; 

__attribute__((used)) static void FUNC20(FILE *file, HKEY key,
                 WCHAR **reg_key_name_buf, DWORD *reg_key_name_size,
                 WCHAR **val_name_buf, DWORD *val_name_size,
                 BYTE **val_buf, DWORD *val_size,
                 WCHAR **line_buf, DWORD *line_buf_size,
                 BOOL unicode)
{
    DWORD max_sub_key_len;
    DWORD max_val_name_len;
    DWORD max_val_size;
    DWORD curr_len;
    DWORD i;
    BOOL more_data;
    LONG ret;
    WCHAR key_format[] = {'\r','\n','[','%','s',']','\r','\n',0};

    /* get size information and resize the buffers if necessary */
    if (FUNC13(key, NULL, NULL, NULL, NULL,
                        &max_sub_key_len, NULL,
                        NULL, &max_val_name_len, &max_val_size, NULL, NULL
                       ) != ERROR_SUCCESS) {
        FUNC5();
    }
    curr_len = FUNC19(*reg_key_name_buf);
    FUNC7(reg_key_name_buf, reg_key_name_size,
                               max_sub_key_len + curr_len + 1);
    FUNC7(val_name_buf, val_name_size,
                               max_val_name_len);
    FUNC6(val_buf, val_size, max_val_size);
    FUNC7(line_buf, line_buf_size, FUNC17(*reg_key_name_buf) + 4);
    /* output data for the current key */
    FUNC18(*line_buf, key_format, *reg_key_name_buf);
    FUNC8(file, *line_buf, unicode);

    /* print all the values */
    i = 0;
    more_data = TRUE;
    while(more_data) {
        DWORD value_type;
        DWORD val_name_size1 = *val_name_size;
        DWORD val_size1 = *val_size;
        ret = FUNC11(key, i, *val_name_buf, &val_name_size1, NULL,
                           &value_type, *val_buf, &val_size1);
        if (ret == ERROR_MORE_DATA) {
            /* Increase the size of the buffers and retry */
            FUNC7(val_name_buf, val_name_size, val_name_size1);
            FUNC6(val_buf, val_size, val_size1);
        } else if (ret != ERROR_SUCCESS) {
            more_data = FALSE;
            if (ret != ERROR_NO_MORE_ITEMS) {
                FUNC5();
            }
        } else {
            DWORD line_len;
            i++;

            if ((*val_name_buf)[0]) {
                const WCHAR val_start[] = {'"','%','s','"','=',0};

                line_len = 0;
                FUNC4(line_buf, line_buf_size, &line_len, *val_name_buf, FUNC17(*val_name_buf));
                FUNC7(val_name_buf, val_name_size, FUNC17(*line_buf) + 1);
                FUNC16(*val_name_buf, *line_buf);

                line_len = 3 + FUNC17(*val_name_buf);
                FUNC7(line_buf, line_buf_size, line_len);
                FUNC18(*line_buf, val_start, *val_name_buf);
            } else {
                const WCHAR std_val[] = {'@','=',0};
                line_len = 2;
                FUNC7(line_buf, line_buf_size, line_len);
                FUNC16(*line_buf, std_val);
            }

            switch (value_type) {
            case REG_SZ:
            {
                WCHAR* wstr = (WCHAR*)*val_buf;

                if (val_size1 < sizeof(WCHAR) || val_size1 % sizeof(WCHAR) ||
                    wstr[val_size1 / sizeof(WCHAR) - 1]) {
                    FUNC3(line_buf, line_buf_size, &line_len, value_type, *val_buf, val_size1, unicode);
                } else {
                    const WCHAR start[] = {'"',0};
                    const WCHAR end[] = {'"','\r','\n',0};
                    DWORD len;

                    len = FUNC17(start);
                    FUNC7(line_buf, line_buf_size, line_len + len);
                    FUNC16(*line_buf + line_len, start);
                    line_len += len;

                    /* At this point we know wstr is '\0'-terminated
                     * so we can subtract 1 from the size
                     */
                    FUNC4(line_buf, line_buf_size, &line_len, wstr, val_size1 / sizeof(WCHAR) - 1);

                    FUNC7(line_buf, line_buf_size, line_len + FUNC17(end));
                    FUNC16(*line_buf + line_len, end);
                }
                break;
            }

            case REG_DWORD:
            {
                WCHAR format[] = {'d','w','o','r','d',':','%','0','8','x','\r','\n',0};

                FUNC7(line_buf, line_buf_size, line_len + 15);
                FUNC18(*line_buf + line_len, format, *((DWORD *)*val_buf));
                break;
            }

            default:
            {
                char* key_nameA = FUNC0(*reg_key_name_buf);
                char* value_nameA = FUNC0(*val_name_buf);
                FUNC14(stderr,"%S: warning - unsupported registry format '%ld', "
                        "treat as binary\n",
                        FUNC15(), value_type);
                FUNC14(stderr,"key name: \"%s\"\n", key_nameA);
                FUNC14(stderr,"value name:\"%s\"\n\n", value_nameA);
                FUNC2(FUNC1(), 0, key_nameA);
                FUNC2(FUNC1(), 0, value_nameA);
            }
                /* falls through */
            case REG_EXPAND_SZ:
            case REG_MULTI_SZ:
                /* falls through */
            case REG_BINARY:
                FUNC3(line_buf, line_buf_size, &line_len, value_type, *val_buf, val_size1, unicode);
            }
            FUNC8(file, *line_buf, unicode);
        }
    }

    i = 0;
    more_data = TRUE;
    (*reg_key_name_buf)[curr_len] = '\\';
    while(more_data) {
        DWORD buf_size = *reg_key_name_size - curr_len - 1;

        ret = FUNC10(key, i, *reg_key_name_buf + curr_len + 1, &buf_size,
                           NULL, NULL, NULL, NULL);
        if (ret == ERROR_MORE_DATA) {
            /* Increase the size of the buffer and retry */
            FUNC7(reg_key_name_buf, reg_key_name_size, curr_len + 1 + buf_size);
        } else if (ret != ERROR_SUCCESS) {
            more_data = FALSE;
            if (ret != ERROR_NO_MORE_ITEMS) {
                FUNC5();
            }
        } else {
            HKEY subkey;

            i++;
            if (FUNC12(key, *reg_key_name_buf + curr_len + 1,
                           &subkey) == ERROR_SUCCESS) {
                FUNC20(file, subkey, reg_key_name_buf, reg_key_name_size,
                            val_name_buf, val_name_size, val_buf, val_size,
                            line_buf, line_buf_size, unicode);
                FUNC9(subkey);
            } else {
                FUNC5();
            }
        }
    }
    (*reg_key_name_buf)[curr_len] = '\0';
}