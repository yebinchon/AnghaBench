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
struct TYPE_7__ {int num; int /*<<< orphan*/  enc; scalar_t__ iv; } ;
struct TYPE_5__ {int /*<<< orphan*/  ks; } ;
struct TYPE_6__ {TYPE_1__ dks; } ;
typedef  TYPE_2__ PROV_DES_CTX ;
typedef  TYPE_3__ PROV_CIPHER_CTX ;
typedef  int /*<<< orphan*/  DES_key_schedule ;
typedef  int /*<<< orphan*/  DES_cblock ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char const*,unsigned char*,long,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ) ; 
 size_t MAXCHUNK ; 

__attribute__((used)) static int FUNC1(PROV_CIPHER_CTX *ctx, unsigned char *out,
                                      const unsigned char *in, size_t len)
{
    size_t chunk = MAXCHUNK;
    DES_key_schedule *key = &(((PROV_DES_CTX *)ctx)->dks.ks);
    int num = ctx->num;

    if (len < chunk)
        chunk = len;
    while (len > 0 && len >= chunk) {
        FUNC0(in, out, (long)chunk, key, (DES_cblock *)ctx->iv,
                          &num, ctx->enc);
        len -= chunk;
        in += chunk;
        out += chunk;
        if (len < chunk)
            chunk = len;
    }
    ctx->num = num;
    return 1;
}