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
typedef  int /*<<< orphan*/  faketag ;
typedef  int /*<<< orphan*/  aad ;
typedef  int /*<<< orphan*/  EVP_CIPHER_CTX ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,unsigned char*) ; 
 int /*<<< orphan*/  EVP_CTRL_AEAD_SET_TAG ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned char*,int*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned char*,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned char*,int*,unsigned char*,int) ; 
 scalar_t__ decrypt ; 
 int /*<<< orphan*/  iv ; 
 int* lengths ; 
 int save_count ; 
 size_t testnum ; 

__attribute__((used)) static int FUNC8(void *args)
{
    loopargs_t *tempargs = *(loopargs_t **) args;
    unsigned char *buf = tempargs->buf;
    EVP_CIPHER_CTX *ctx = tempargs->ctx;
    int outl, count;
    unsigned char aad[13] = { 0xcc };
    unsigned char faketag[16] = { 0xcc };
#ifndef SIGALRM
    int nb_iter = save_count * 4 * lengths[0] / lengths[testnum];
#endif
    if (decrypt) {
        for (count = 0; FUNC0(nb_iter); count++) {
            FUNC3(ctx, NULL, NULL, NULL, iv);
            FUNC1(ctx, EVP_CTRL_AEAD_SET_TAG,
                                sizeof(faketag), faketag);
            FUNC4(ctx, NULL, &outl, aad, sizeof(aad));
            FUNC4(ctx, buf, &outl, buf, lengths[testnum]);
            FUNC2(ctx, buf + outl, &outl);
        }
    } else {
        for (count = 0; FUNC0(nb_iter); count++) {
            FUNC6(ctx, NULL, NULL, NULL, iv);
            FUNC7(ctx, NULL, &outl, aad, sizeof(aad));
            FUNC7(ctx, buf, &outl, buf, lengths[testnum]);
            FUNC5(ctx, buf + outl, &outl);
        }
    }
    return count;
}