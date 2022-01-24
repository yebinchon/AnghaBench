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
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int MAX_HEX_CHARS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 char* FUNC1 (int) ; 
 scalar_t__ FUNC2 (char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static void FUNC4(HANDLE hFile, WCHAR **buf, DWORD type,
                            DWORD line_len, void *data, DWORD size)
{
    static const WCHAR fmt[] = {'%','0','2','x',0};
    static const WCHAR hex_concat[] = {'\\','\r','\n',' ',' ',0};
    size_t num_commas, i, pos;

    line_len += FUNC0(hFile, type);

    if (!size) return;

    num_commas = size - 1;
    *buf = FUNC1(size * 3 * sizeof(WCHAR));

    for (i = 0, pos = 0; i < size; i++)
    {
        pos += FUNC2(*buf + pos, fmt, ((BYTE *)data)[i]);
        if (i == num_commas) break;
        (*buf)[pos++] = ',';
        (*buf)[pos] = 0;
        line_len += 3;

        if (line_len >= MAX_HEX_CHARS)
        {
            FUNC3(hFile, *buf);
            FUNC3(hFile, hex_concat);
            line_len = 2;
            pos = 0;
        }
    }
}