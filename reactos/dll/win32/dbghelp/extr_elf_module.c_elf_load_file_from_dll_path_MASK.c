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
struct elf_info {int dummy; } ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CP_UNIXCP ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  const* S_SlashW ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned long,unsigned long,struct elf_info*) ; 
 unsigned int FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 char* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static BOOL FUNC8(HANDLE hProcess,
                                        const WCHAR* filename,
                                        unsigned long load_offset,
                                        unsigned long dyn_addr,
                                        struct elf_info* elf_info)
{
    BOOL ret = FALSE;
    unsigned int index = 0;
    const char *path;

    while (!ret && (path = FUNC7( index++ )))
    {
        WCHAR *name;
        unsigned len;

        len = FUNC3(CP_UNIXCP, 0, path, -1, NULL, 0);

        name = FUNC1( FUNC0(), 0,
                          (len + FUNC5(filename) + 2) * sizeof(WCHAR) );

        if (!name) break;
        FUNC3(CP_UNIXCP, 0, path, -1, name, len);
        FUNC6( name, S_SlashW );
        FUNC6( name, filename );
        ret = FUNC4(hProcess, name, load_offset, dyn_addr, elf_info);
        FUNC2( FUNC0(), 0, name );
    }
    return ret;
}