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
struct TYPE_3__ {int dwFileAttributes; int /*<<< orphan*/  const* cFileName; } ;
typedef  TYPE_1__ WIN32_FIND_DATA ;
typedef  int /*<<< orphan*/  TCHAR ;
typedef  scalar_t__* LPCTSTR ;

/* Variables and functions */
 int FILE_ATTRIBUTE_DIRECTORY ; 
 scalar_t__ FUNC0 (char) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*,scalar_t__*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/  const*,scalar_t__) ; 

__attribute__((used)) static bool
FUNC3(const WIN32_FIND_DATA *find, LPCTSTR ext)
{
    if (find->dwFileAttributes & FILE_ATTRIBUTE_DIRECTORY)
    {
        return false;
    }

    if (*ext == FUNC0('\0'))
    {
        return true;
    }

    /* find the pointer to that last '.' in filename and match ext against the rest */

    const TCHAR *p = FUNC2(find->cFileName, FUNC0('.'));
    return p && p != find->cFileName && FUNC1(p + 1, ext) == 0;
}