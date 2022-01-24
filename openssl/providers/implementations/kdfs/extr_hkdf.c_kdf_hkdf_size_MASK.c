#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ mode; int /*<<< orphan*/  digest; } ;
typedef  TYPE_1__ KDF_HKDF ;
typedef  int /*<<< orphan*/  EVP_MD ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_LIB_PROV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ EVP_KDF_HKDF_MODE_EXTRACT_ONLY ; 
 int FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  PROV_R_MISSING_MESSAGE_DIGEST ; 
 size_t SIZE_MAX ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static size_t FUNC3(KDF_HKDF *ctx)
{
    int sz;
    const EVP_MD *md = FUNC2(&ctx->digest);

    if (ctx->mode != EVP_KDF_HKDF_MODE_EXTRACT_ONLY)
        return SIZE_MAX;

    if (md == NULL) {
        FUNC0(ERR_LIB_PROV, PROV_R_MISSING_MESSAGE_DIGEST);
        return 0;
    }
    sz = FUNC1(md);
    if (sz < 0)
        return 0;

    return sz;
}