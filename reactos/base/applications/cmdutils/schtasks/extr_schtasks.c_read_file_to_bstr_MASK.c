#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_3__ {int /*<<< orphan*/  QuadPart; } ;
typedef  TYPE_1__ LARGE_INTEGER ;
typedef  scalar_t__ HANDLE ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/ * BSTR ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CP_ACP ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FILE_ATTRIBUTE_NORMAL ; 
 int /*<<< orphan*/  FILE_SHARE_READ ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  GENERIC_READ ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 unsigned char* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*) ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  OPEN_EXISTING ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,unsigned char*,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static BSTR FUNC10(const WCHAR *file_name)
{
    LARGE_INTEGER file_size;
    DWORD read_size, size;
    unsigned char *data;
    HANDLE file;
    BOOL r = FALSE;
    BSTR ret;

    file = FUNC1(file_name, GENERIC_READ, FILE_SHARE_READ, NULL,
                       OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, NULL);
    if (file == INVALID_HANDLE_VALUE) {
        FUNC2("Could not open file\n");
        return NULL;
    }

    if (!FUNC3(file, &file_size) || !file_size.QuadPart) {
        FUNC2("Empty file\n");
        FUNC0(file);
        return NULL;
    }

    data = FUNC5(FUNC4(), 0, file_size.QuadPart);
    if (data)
        r = FUNC8(file, data, file_size.QuadPart, &read_size, NULL);
    FUNC0(file);
    if (!r) {
        FUNC2("Read filed\n");
        FUNC6(FUNC4(), 0, data);
        return NULL;
    }

    if (read_size > 2 && data[0] == 0xff && data[1] == 0xfe) { /* UTF-16 BOM */
        ret = FUNC9((const WCHAR *)(data + 2), (read_size - 2) / sizeof(WCHAR));
    }else {
        size = FUNC7(CP_ACP, 0, (const char *)data, read_size, NULL, 0);
        ret = FUNC9(NULL, size);
        if (ret)
            FUNC7(CP_ACP, 0, (const char *)data, read_size, ret, size);
    }
    FUNC6(FUNC4(), 0, data);

    return ret;
}