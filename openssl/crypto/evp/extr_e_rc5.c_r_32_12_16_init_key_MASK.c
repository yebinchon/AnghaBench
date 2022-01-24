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
struct TYPE_2__ {int /*<<< orphan*/  rounds; int /*<<< orphan*/  ks; } ;
typedef  int /*<<< orphan*/  EVP_CIPHER_CTX ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  EVP_F_R_32_12_16_INIT_KEY ; 
 int /*<<< orphan*/  EVP_R_BAD_KEY_LENGTH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,unsigned char const*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(EVP_CIPHER_CTX *ctx, const unsigned char *key,
                               const unsigned char *iv, int enc)
{
    if (FUNC0(ctx) > 255) {
        FUNC1(EVP_F_R_32_12_16_INIT_KEY, EVP_R_BAD_KEY_LENGTH);
        return 0;
    }
    return FUNC2(&FUNC3(ctx)->ks, FUNC0(ctx),
                          key, FUNC3(ctx)->rounds);
}