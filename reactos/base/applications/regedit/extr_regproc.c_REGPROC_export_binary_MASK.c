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
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  CHAR ;
typedef  scalar_t__ BYTE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char*,scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char**,scalar_t__*,scalar_t__) ; 
 scalar_t__ REG_BINARY ; 
 scalar_t__ REG_EXPAND_SZ ; 
 scalar_t__ REG_FILE_HEX_LINE_LEN ; 
 scalar_t__ REG_MULTI_SZ ; 
 scalar_t__ REG_SZ ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 scalar_t__ FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,unsigned int) ; 

__attribute__((used)) static void FUNC7(WCHAR **line_buf, DWORD *line_buf_size, DWORD *line_len, DWORD type, BYTE *value, DWORD value_size, BOOL unicode)
{
    DWORD hex_pos, data_pos;
    const WCHAR *hex_prefix;
    const WCHAR hex[] = {'h','e','x',':',0};
    WCHAR hex_buf[17];
    const WCHAR concat[] = {'\\','\r','\n',' ',' ',0};
    DWORD concat_prefix, concat_len;
    const WCHAR newline[] = {'\r','\n',0};
    CHAR* value_multibyte = NULL;

    if (type == REG_BINARY) {
        hex_prefix = hex;
    } else {
        const WCHAR hex_format[] = {'h','e','x','(','%','x',')',':',0};
        hex_prefix = hex_buf;
        FUNC6(hex_buf, hex_format, type);
        if ((type == REG_SZ || type == REG_EXPAND_SZ || type == REG_MULTI_SZ) && !unicode)
        {
            value_multibyte = FUNC0((WCHAR*)value, value_size / sizeof(WCHAR), &value_size);
            value = (BYTE*)value_multibyte;
        }
    }

    concat_len = FUNC5(concat);
    concat_prefix = 2;

    hex_pos = *line_len;
    *line_len += FUNC5(hex_prefix);
    data_pos = *line_len;
    *line_len += value_size * 3;
    /* - The 2 spaces that concat places at the start of the
     *   line effectively reduce the space available for data.
     * - If the value name and hex prefix are very long
     *   ( > REG_FILE_HEX_LINE_LEN) or *line_len divides
     *   without a remainder then we may overestimate
     *   the needed number of lines by one. But that's ok.
     * - The trailing '\r' takes the place of a comma so
     *   we only need to add 1 for the trailing '\n'
     */
    *line_len += *line_len / (REG_FILE_HEX_LINE_LEN - concat_prefix) * concat_len + 1;
    FUNC3(line_buf, line_buf_size, *line_len);
    FUNC4(*line_buf + hex_pos, hex_prefix);
    if (value_size)
    {
        const WCHAR format[] = {'%','0','2','x',0};
        DWORD i, column;

        column = data_pos; /* no line wrap yet */
        i = 0;
        while (1)
        {
            FUNC6(*line_buf + data_pos, format, (unsigned int)value[i]);
            data_pos += 2;
            if (++i == value_size)
                break;

            (*line_buf)[data_pos++] = ',';
            column += 3;

            /* wrap the line */
            if (column >= REG_FILE_HEX_LINE_LEN) {
                FUNC4(*line_buf + data_pos, concat);
                data_pos += concat_len;
                column = concat_prefix;
            }
        }
    }
    FUNC4(*line_buf + data_pos, newline);
    FUNC2(FUNC1(), 0, value_multibyte);
}