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
typedef  char WCHAR ;
struct TYPE_3__ {scalar_t__ key; char* long_name; } ;
typedef  scalar_t__ HKEY ;
typedef  size_t DWORD ;

/* Variables and functions */
 size_t FUNC0 (TYPE_1__*) ; 
 char* FUNC1 (size_t) ; 
 TYPE_1__* root_rels ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 size_t FUNC4 (char*) ; 

__attribute__((used)) static WCHAR *FUNC5(HKEY root, WCHAR *path)
{
    DWORD i, array_size = FUNC0(root_rels), len;
    WCHAR *long_key;
    WCHAR fmt[] = {'%','s','\\','%','s',0};

    for (i = 0; i < array_size; i++)
    {
        if (root == root_rels[i].key)
            break;
    }

    len = FUNC4(root_rels[i].long_name);

    if (!path)
    {
        long_key = FUNC1((len + 1) * sizeof(WCHAR));
        FUNC3(long_key, root_rels[i].long_name);
        return long_key;
    }

    len += FUNC4(path) + 1; /* add one for the backslash */
    long_key = FUNC1((len + 1) * sizeof(WCHAR));
    FUNC2(long_key, fmt, root_rels[i].long_name, path);
    return long_key;
}