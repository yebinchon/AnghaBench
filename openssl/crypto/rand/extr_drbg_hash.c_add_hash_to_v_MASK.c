#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {unsigned char const* V; int /*<<< orphan*/  blocklen; int /*<<< orphan*/  vtmp; int /*<<< orphan*/  md; int /*<<< orphan*/ * ctx; } ;
struct TYPE_6__ {TYPE_2__ hash; } ;
struct TYPE_8__ {size_t seedlen; TYPE_1__ data; } ;
typedef  TYPE_2__ RAND_DRBG_HASH ;
typedef  TYPE_3__ RAND_DRBG ;
typedef  int /*<<< orphan*/  EVP_MD_CTX ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,unsigned char const*,size_t) ; 
 scalar_t__ FUNC3 (TYPE_3__*,unsigned char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(RAND_DRBG *drbg, unsigned char inbyte,
                         const unsigned char *adin, size_t adinlen)
{
    RAND_DRBG_HASH *hash = &drbg->data.hash;
    EVP_MD_CTX *ctx = hash->ctx;

    return FUNC1(ctx, hash->md, NULL)
           && FUNC2(ctx, &inbyte, 1)
           && FUNC2(ctx, hash->V, drbg->seedlen)
           && (adin == NULL || FUNC2(ctx, adin, adinlen))
           && FUNC0(ctx, hash->vtmp, NULL)
           && FUNC3(drbg, hash->V, hash->vtmp, hash->blocklen);
}