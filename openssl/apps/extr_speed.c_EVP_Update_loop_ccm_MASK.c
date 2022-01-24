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
typedef  int /*<<< orphan*/  tag ;
struct TYPE_2__ {unsigned char* buf; int /*<<< orphan*/ * ctx; } ;
typedef  TYPE_1__ loopargs_t ;
typedef  int /*<<< orphan*/  EVP_CIPHER_CTX ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,unsigned char*) ; 
 int /*<<< orphan*/  EVP_CTRL_AEAD_SET_TAG ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned char*,int*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned char*,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned char*,int*,unsigned char*,int) ; 
 scalar_t__ decrypt ; 
 int /*<<< orphan*/  iv ; 
 int* lengths ; 
 int save_count ; 
 size_t testnum ; 

__attribute__((used)) static int FUNC7(void *args)
{
    loopargs_t *tempargs = *(loopargs_t **) args;
    unsigned char *buf = tempargs->buf;
    EVP_CIPHER_CTX *ctx = tempargs->ctx;
    int outl, count;
    unsigned char tag[12];
#ifndef SIGALRM
    int nb_iter = save_count * 4 * lengths[0] / lengths[testnum];
#endif
    if (decrypt) {
        for (count = 0; FUNC0(nb_iter); count++) {
            FUNC1(ctx, EVP_CTRL_AEAD_SET_TAG, sizeof(tag), tag);
            /* reset iv */
            FUNC3(ctx, NULL, NULL, NULL, iv);
            /* counter is reset on every update */
            FUNC4(ctx, buf, &outl, buf, lengths[testnum]);
        }
    } else {
        for (count = 0; FUNC0(nb_iter); count++) {
            /* restore iv length field */
            FUNC6(ctx, NULL, &outl, NULL, lengths[testnum]);
            /* counter is reset on every update */
            FUNC6(ctx, buf, &outl, buf, lengths[testnum]);
        }
    }
    if (decrypt)
        FUNC2(ctx, buf, &outl);
    else
        FUNC5(ctx, buf, &outl);
    return count;
}