#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ mode; scalar_t__ enc; } ;
struct TYPE_5__ {int /*<<< orphan*/  ks; } ;
struct TYPE_6__ {TYPE_1__ ks; } ;
typedef  TYPE_2__ PROV_IDEA_CTX ;
typedef  TYPE_3__ PROV_CIPHER_CTX ;
typedef  int /*<<< orphan*/  IDEA_KEY_SCHEDULE ;

/* Variables and functions */
 scalar_t__ EVP_CIPH_CFB_MODE ; 
 scalar_t__ EVP_CIPH_OFB_MODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int) ; 

__attribute__((used)) static int FUNC3(PROV_CIPHER_CTX *ctx,
                                  const unsigned char *key, size_t keylen)
{
    PROV_IDEA_CTX *ictx =  (PROV_IDEA_CTX *)ctx;
    IDEA_KEY_SCHEDULE *ks = &(ictx->ks.ks);

    if (ctx->enc
            || ctx->mode == EVP_CIPH_OFB_MODE
            || ctx->mode == EVP_CIPH_CFB_MODE) {
        FUNC1(key, ks);
    } else {
        IDEA_KEY_SCHEDULE tmp;

        FUNC1(key, &tmp);
        FUNC0(&tmp, ks);
        FUNC2((unsigned char *)&tmp, sizeof(IDEA_KEY_SCHEDULE));
    }
    return 1;
}