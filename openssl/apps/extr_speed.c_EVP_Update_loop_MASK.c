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
struct TYPE_2__ {unsigned char* buf; int /*<<< orphan*/ * ctx; } ;
typedef  TYPE_1__ loopargs_t ;
typedef  int /*<<< orphan*/  EVP_CIPHER_CTX ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char*,int*) ; 
 int FUNC3 (int /*<<< orphan*/ *,unsigned char*,int*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned char*,int*) ; 
 int FUNC5 (int /*<<< orphan*/ *,unsigned char*,int*,unsigned char*,int) ; 
 scalar_t__ decrypt ; 
 int /*<<< orphan*/  iv ; 
 int* lengths ; 
 int save_count ; 
 size_t testnum ; 

__attribute__((used)) static int FUNC6(void *args)
{
    loopargs_t *tempargs = *(loopargs_t **) args;
    unsigned char *buf = tempargs->buf;
    EVP_CIPHER_CTX *ctx = tempargs->ctx;
    int outl, count, rc;
#ifndef SIGALRM
    int nb_iter = save_count * 4 * lengths[0] / lengths[testnum];
#endif
    if (decrypt) {
        for (count = 0; FUNC0(nb_iter); count++) {
            rc = FUNC3(ctx, buf, &outl, buf, lengths[testnum]);
            if (rc != 1) {
                /* reset iv in case of counter overflow */
                FUNC1(ctx, NULL, NULL, NULL, iv, -1);
            }
        }
    } else {
        for (count = 0; FUNC0(nb_iter); count++) {
            rc = FUNC5(ctx, buf, &outl, buf, lengths[testnum]);
            if (rc != 1) {
                /* reset iv in case of counter overflow */
                FUNC1(ctx, NULL, NULL, NULL, iv, -1);
            }
        }
    }
    if (decrypt)
        FUNC2(ctx, buf, &outl);
    else
        FUNC4(ctx, buf, &outl);
    return count;
}