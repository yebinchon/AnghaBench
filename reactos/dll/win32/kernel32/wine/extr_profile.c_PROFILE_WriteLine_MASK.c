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
typedef  int ENCODING ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  CP_ACP ; 
 int /*<<< orphan*/  CP_UTF8 ; 
#define  ENCODING_ANSI 131 
#define  ENCODING_UTF16BE 130 
#define  ENCODING_UTF16LE 129 
#define  ENCODING_UTF8 128 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 char* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 

__attribute__((used)) static void FUNC9( HANDLE hFile, WCHAR * szLine, int len, ENCODING encoding)
{
    char * write_buffer;
    int write_buffer_len;
    DWORD dwBytesWritten;

    FUNC5("writing: %s\n", FUNC8(szLine, len));

    switch (encoding)
    {
    case ENCODING_ANSI:
        write_buffer_len = FUNC6(CP_ACP, 0, szLine, len, NULL, 0, NULL, NULL);
        write_buffer = FUNC2(FUNC1(), 0, write_buffer_len);
        if (!write_buffer) return;
        len = FUNC6(CP_ACP, 0, szLine, len, write_buffer, write_buffer_len, NULL, NULL);
        FUNC7(hFile, write_buffer, len, &dwBytesWritten, NULL);
        FUNC3(FUNC1(), 0, write_buffer);
        break;
    case ENCODING_UTF8:
        write_buffer_len = FUNC6(CP_UTF8, 0, szLine, len, NULL, 0, NULL, NULL);
        write_buffer = FUNC2(FUNC1(), 0, write_buffer_len);
        if (!write_buffer) return;
        len = FUNC6(CP_UTF8, 0, szLine, len, write_buffer, write_buffer_len, NULL, NULL);
        FUNC7(hFile, write_buffer, len, &dwBytesWritten, NULL);
        FUNC3(FUNC1(), 0, write_buffer);
        break;
    case ENCODING_UTF16LE:
        FUNC7(hFile, szLine, len * sizeof(WCHAR), &dwBytesWritten, NULL);
        break;
    case ENCODING_UTF16BE:
        FUNC4(szLine, len);
        FUNC7(hFile, szLine, len * sizeof(WCHAR), &dwBytesWritten, NULL);
        break;
    default:
        FUNC0("encoding type %d not implemented\n", encoding);
    }
}