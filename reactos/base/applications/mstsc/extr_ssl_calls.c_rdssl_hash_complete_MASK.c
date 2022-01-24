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
struct hash_context {int /*<<< orphan*/  hHash; int /*<<< orphan*/  hCryptProv; } ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  HP_HASHVAL ; 
 int /*<<< orphan*/  FUNC2 (char*,void*,...) ; 

void
FUNC3(void* hash_info, char* data)
{
    struct hash_context *info = hash_info;
    BOOL ret;
    DWORD dwErr, dwDataLen;
    if (!info || !info->hHash || !info->hCryptProv || !data)
    {
        FUNC2("rdssl_hash_complete %p %p\n", hash_info, data);
        return;
    }
    ret = FUNC0(info->hHash,
                            HP_HASHVAL,
                            NULL,
                            &dwDataLen,
                            0);
    if (!ret)
    {
        dwErr = FUNC1();
        FUNC2("CryptGetHashParam failed with %lx\n", dwErr);
        return;
    }
    ret = FUNC0(info->hHash,
                            HP_HASHVAL,
                            (BYTE *)data,
                            &dwDataLen,
                            0);
    if (!ret)
    {
        dwErr = FUNC1();
        FUNC2("CryptGetHashParam failed with %lx\n", dwErr);
    }
}