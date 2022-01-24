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
struct hash_context {scalar_t__ hCryptProv; scalar_t__ hHash; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 

void
FUNC3(void* hash_info)
{
    struct hash_context *info = hash_info;
    if (!info)
    {
        //error("ssl_hash_info_delete hash_info is null\n");
        return;
    }
    if (info->hHash)
    {
        FUNC0(info->hHash);
    }
    if (info->hCryptProv)
    {
        FUNC1(info->hCryptProv, 0);
    }
    FUNC2(hash_info);
}