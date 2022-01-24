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
struct rc4_state {int /*<<< orphan*/  hKey; } ;
typedef  int DWORD ;
typedef  char BYTE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int*,int) ; 
 int /*<<< orphan*/  FALSE ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 

void
FUNC6(void* rc4_info, char* in_data, char* out_data, int len)
{
    struct rc4_state *info = rc4_info;
    BOOL ret;
    DWORD dwErr;
    BYTE * intermediate_data;
    DWORD dwLen = len;
    if (!rc4_info || !in_data || !out_data || !len || !info->hKey)
    {
        FUNC2("rdssl_rc4_crypt %p %p %p %d\n", rc4_info, in_data, out_data, len);
        return;
    }
    intermediate_data = FUNC4(len, 0);
    if (!intermediate_data)
    {
        FUNC2("rdssl_rc4_set_key no memory\n");
        return;
    }
    FUNC5(intermediate_data, in_data, len);
    ret = FUNC0(info->hKey,
                       0,
                       FALSE,
                       0,
                       intermediate_data,
                       &dwLen,
                       dwLen);
    if (!ret)
    {
        dwErr = FUNC1();
        FUNC3(intermediate_data);
        FUNC2("CryptEncrypt failed with %lx\n", dwErr);
        return;
    }
    FUNC5(out_data, intermediate_data, len);
    FUNC3(intermediate_data);
}