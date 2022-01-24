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
struct rc4_state {scalar_t__ hCryptProv; scalar_t__ hKey; } ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 

void
FUNC5(void* rc4_info)
{
    struct rc4_state *info = rc4_info;
    BOOL ret = TRUE;
    DWORD dwErr;
    if (!info)
    {
        //error("rdssl_rc4_info_delete rc4_info is null\n");
        return;
    }
    if (info->hKey)
    {
        ret = FUNC0(info->hKey);
        if (!ret)
        {
            dwErr = FUNC2();
            FUNC3("CryptDestroyKey failed with %lx\n", dwErr);
        }
    }
    if (info->hCryptProv)
    {
        ret = FUNC1(info->hCryptProv, 0);
        if (!ret)
        {
            dwErr = FUNC2();
            FUNC3("CryptReleaseContext failed with %lx\n", dwErr);
        }
    }
    FUNC4(rc4_info);
}