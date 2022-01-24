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
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int DWORD ;

/* Variables and functions */
#define  REG_BINARY 133 
#define  REG_DWORD 132 
#define  REG_EXPAND_SZ 131 
#define  REG_MULTI_SZ 130 
#define  REG_NONE 129 
#define  REG_SZ 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int,size_t,void*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,void*,size_t) ; 
 size_t FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(HANDLE hFile, WCHAR *value_name, DWORD value_len,
                        DWORD type, void *data, size_t size)
{
    WCHAR *buf = NULL;
    size_t line_len = FUNC4(hFile, value_name, value_len);

    switch (type)
    {
    case REG_SZ:
        FUNC3(&buf, data, size);
        break;
    case REG_DWORD:
        if (size)
        {
            FUNC0(&buf, data);
            break;
        }
        /* fall through */
    case REG_NONE:
    case REG_EXPAND_SZ:
    case REG_BINARY:
    case REG_MULTI_SZ:
    default:
        FUNC1(hFile, &buf, type, line_len, data, size);
        break;
    }

    if (size || type == REG_SZ)
    {
        FUNC6(hFile, buf);
        FUNC5(buf);
    }

    FUNC2(hFile);
}