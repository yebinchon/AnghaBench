#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  version2 ;
typedef  int /*<<< orphan*/  version1 ;
typedef  int /*<<< orphan*/  token2 ;
typedef  int /*<<< orphan*/  token1 ;
typedef  int /*<<< orphan*/  name2 ;
typedef  int /*<<< orphan*/  name1 ;
typedef  scalar_t__ WORD ;
typedef  scalar_t__ WCHAR ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;
typedef  scalar_t__ DWORD ;
typedef  scalar_t__ BYTE ;
typedef  TYPE_1__ ASMNAME ;

/* Variables and functions */
 scalar_t__ ASM_NAME_CULTURE ; 
 scalar_t__ ASM_NAME_MAJOR_VERSION ; 
 scalar_t__ ASM_NAME_NAME ; 
 scalar_t__ ASM_NAME_PUBLIC_KEY_TOKEN ; 
 int BYTES_PER_TOKEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,scalar_t__*,scalar_t__*) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  TOKEN_LENGTH ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,scalar_t__*) ; 
 int FUNC2 (scalar_t__*,scalar_t__*) ; 

__attribute__((used)) static int FUNC3(ASMNAME *asmname1, ASMNAME *asmname2)
{
    int ret;
    WORD version1, version2;
    WCHAR name1[MAX_PATH], name2[MAX_PATH];
    WCHAR token_str1[TOKEN_LENGTH + 1], token_str2[TOKEN_LENGTH + 1];
    BYTE token1[BYTES_PER_TOKEN], token2[BYTES_PER_TOKEN];
    DWORD size, i;

    size = sizeof(name1);
    FUNC0(asmname1->name, ASM_NAME_NAME, name1, &size);
    size = sizeof(name2);
    FUNC0(asmname2->name, ASM_NAME_NAME, name2, &size);

    if ((ret = FUNC2(name1, name2))) return ret;

    for (i = ASM_NAME_MAJOR_VERSION; i < ASM_NAME_CULTURE; i++)
    {
        size = sizeof(version1);
        FUNC0(asmname1->name, i, &version1, &size);
        size = sizeof(version2);
        FUNC0(asmname2->name, i, &version2, &size);

        if (version1 < version2) return -1;
        if (version1 > version2) return 1;
    }

    /* FIXME: compare cultures */

    size = sizeof(token1);
    FUNC0(asmname1->name, ASM_NAME_PUBLIC_KEY_TOKEN, token1, &size);
    size = sizeof(token2);
    FUNC0(asmname2->name, ASM_NAME_PUBLIC_KEY_TOKEN, token2, &size);

    FUNC1(token1, token_str1);
    FUNC1(token2, token_str2);

    if ((ret = FUNC2(token_str1, token_str2))) return ret;

    return 0;
}