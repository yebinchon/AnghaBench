#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int enc; int aead; int /*<<< orphan*/ * fetched_cipher; int /*<<< orphan*/  const* cipher; } ;
struct TYPE_5__ {int skip; TYPE_2__* data; } ;
typedef  TYPE_1__ EVP_TEST ;
typedef  int /*<<< orphan*/  EVP_CIPHER ;
typedef  TYPE_2__ CIPHER_DATA ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/  const*) ; 
 int FUNC2 (int /*<<< orphan*/  const*) ; 
 int EVP_CIPH_CCM_MODE ; 
 int EVP_CIPH_FLAG_AEAD_CIPHER ; 
 int EVP_CIPH_GCM_MODE ; 
 int EVP_CIPH_OCB_MODE ; 
 int EVP_CIPH_SIV_MODE ; 
 int /*<<< orphan*/ * FUNC3 (char const*) ; 
 scalar_t__ NID_undef ; 
 scalar_t__ FUNC4 (char const*) ; 
 scalar_t__ FUNC5 (char const*) ; 
 TYPE_2__* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*) ; 

__attribute__((used)) static int FUNC8(EVP_TEST *t, const char *alg)
{
    const EVP_CIPHER *cipher;
    EVP_CIPHER *fetched_cipher;
    CIPHER_DATA *cdat;
    int m;

    if ((cipher = fetched_cipher = FUNC0(NULL, alg, NULL)) == NULL
        && (cipher = FUNC3(alg)) == NULL) {
        /* If alg has an OID assume disabled algorithm */
        if (FUNC5(alg) != NID_undef || FUNC4(alg) != NID_undef) {
            t->skip = 1;
            return 1;
        }
        return 0;
    }
    cdat = FUNC6(sizeof(*cdat));
    cdat->cipher = cipher;
    cdat->fetched_cipher = fetched_cipher;
    cdat->enc = -1;
    m = FUNC2(cipher);
    if (m == EVP_CIPH_GCM_MODE
            || m == EVP_CIPH_OCB_MODE
            || m == EVP_CIPH_SIV_MODE
            || m == EVP_CIPH_CCM_MODE)
        cdat->aead = m;
    else if (FUNC1(cipher) & EVP_CIPH_FLAG_AEAD_CIPHER)
        cdat->aead = -1;
    else
        cdat->aead = 0;

    t->data = cdat;
    if (fetched_cipher != NULL)
        FUNC7("%s is fetched", alg);
    return 1;
}