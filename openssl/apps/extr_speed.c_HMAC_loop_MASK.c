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
struct TYPE_2__ {unsigned char* buf; int /*<<< orphan*/ * hctx; } ;
typedef  TYPE_1__ loopargs_t ;
typedef  int /*<<< orphan*/  HMAC_CTX ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 size_t D_HMAC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned char*,int /*<<< orphan*/ ) ; 
 int MD5_DIGEST_LENGTH ; 
 int /*<<< orphan*/ ** c ; 
 int /*<<< orphan*/ * lengths ; 
 size_t testnum ; 

__attribute__((used)) static int FUNC4(void *args)
{
    loopargs_t *tempargs = *(loopargs_t **) args;
    unsigned char *buf = tempargs->buf;
    HMAC_CTX *hctx = tempargs->hctx;
    unsigned char hmac[MD5_DIGEST_LENGTH];
    int count;

    for (count = 0; FUNC0(c[D_HMAC][testnum]); count++) {
        FUNC2(hctx, NULL, 0, NULL, NULL);
        FUNC3(hctx, buf, lengths[testnum]);
        FUNC1(hctx, hmac, NULL);
    }
    return count;
}