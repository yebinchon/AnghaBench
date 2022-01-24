#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mac ;
struct TYPE_2__ {unsigned char* buf; int /*<<< orphan*/ * cmac_ctx; } ;
typedef  TYPE_1__ loopargs_t ;
typedef  int /*<<< orphan*/  key ;
typedef  int /*<<< orphan*/  CMAC_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned char*,size_t*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  evp_cmac_cipher ; 
 int* lengths ; 
 int save_count ; 
 size_t testnum ; 

__attribute__((used)) static int FUNC4(void *args)
{
    loopargs_t *tempargs = *(loopargs_t **) args;
    unsigned char *buf = tempargs->buf;
    CMAC_CTX *cmac_ctx = tempargs->cmac_ctx;
    static const char key[16] = "This is a key...";
    unsigned char mac[16];
    size_t len = sizeof(mac);
    int count;
#ifndef SIGALRM
    int nb_iter = save_count * 4 * lengths[0] / lengths[testnum];
#endif

    for (count = 0; FUNC3(nb_iter); count++) {
        if (!FUNC1(cmac_ctx, key, sizeof(key), evp_cmac_cipher, NULL)
                || !FUNC2(cmac_ctx, buf, lengths[testnum])
                || !FUNC0(cmac_ctx, mac, &len))
            return -1;
    }
    return count;
}