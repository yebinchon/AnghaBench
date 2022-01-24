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
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,void*,...) ; 

void
FUNC3(void* hash_info, char* data, int len)
{
    struct hash_context *info = hash_info;
    BOOL ret;
    DWORD dwErr;
    if (!info || !info->hHash || !info->hCryptProv || !data || !len)
    {
        FUNC2("rdssl_hash_transform %p %p %d\n", hash_info, data, len);
        return;
    }
    ret = FUNC0(info->hHash,
                        (BYTE *)data,
                        len,
                        0);
    if (!ret)
    {
        dwErr = FUNC1();
        FUNC2("CryptHashData failed with %lx\n", dwErr);
    }
}