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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*,size_t*,size_t,char const) ; 
 int /*<<< orphan*/  FUNC1 (char const) ; 
 int /*<<< orphan*/  FUNC2 (char const) ; 
 int /*<<< orphan*/  FUNC3 (char const) ; 

__attribute__((used)) static const char *
FUNC4(unsigned char *buf, size_t *buf_length,
               size_t buf_max, const char *line)
{
    size_t offset;

    if (*line != '\"')
        return line;
    else
        offset = 1;

    while (line[offset] && line[offset] != '\"') {
        if (line[offset] == '\\') {
            offset++;
            switch (line[offset]) {
            case '0': case '1': case '2': case '3': case '4':
            case '5': case '6': case '7': case '8': case '9':
                {
                    unsigned val = 0;

                    if (FUNC2(line[offset]))
                        val = val * 8 + FUNC1(line[offset++]);
                    if (FUNC2(line[offset]))
                        val = val * 8 + FUNC1(line[offset++]);
                    if (FUNC2(line[offset]))
                        val = val * 8 + FUNC1(line[offset++]);
                    FUNC0(buf, buf_length, buf_max, val);
                    continue;
                }
                break;
            case 'x':
                offset++;
                {
                    unsigned val = 0;

                    if (FUNC3(line[offset]))
                        val = val * 16 + FUNC1(line[offset++]);
                    if (FUNC3(line[offset]))
                        val = val * 16 + FUNC1(line[offset++]);
                    FUNC0(buf, buf_length, buf_max, val);
                    continue;
                }
                break;

            case 'a':
                FUNC0(buf, buf_length, buf_max, '\a');
                break;
            case 'b':
                FUNC0(buf, buf_length, buf_max, '\b');
                break;
            case 'f':
                FUNC0(buf, buf_length, buf_max, '\f');
                break;
            case 'n':
                FUNC0(buf, buf_length, buf_max, '\n');
                break;
            case 'r':
                FUNC0(buf, buf_length, buf_max, '\r');
                break;
            case 't':
                FUNC0(buf, buf_length, buf_max, '\t');
                break;
            case 'v':
                FUNC0(buf, buf_length, buf_max, '\v');
                break;
            default:
            case '\\':
                FUNC0(buf, buf_length, buf_max, line[offset]);
                break;
            }
        } else
            FUNC0(buf, buf_length, buf_max, line[offset]);

        offset++;
    }

    if (line[offset] == '\"')
        offset++;

    return line + offset;

}