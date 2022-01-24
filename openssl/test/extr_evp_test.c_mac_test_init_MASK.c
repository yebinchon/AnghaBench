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
typedef  int /*<<< orphan*/  epilogue ;
struct TYPE_6__ {int skip; TYPE_1__* data; } ;
struct TYPE_5__ {int type; int /*<<< orphan*/  controls; int /*<<< orphan*/ * mac; int /*<<< orphan*/  mac_name; } ;
typedef  TYPE_1__ MAC_DATA ;
typedef  TYPE_2__ EVP_TEST ;
typedef  int /*<<< orphan*/  EVP_MAC ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int EVP_PKEY_CMAC ; 
 int EVP_PKEY_HMAC ; 
 int EVP_PKEY_POLY1305 ; 
 int EVP_PKEY_SIPHASH ; 
 int NID_undef ; 
 int FUNC1 (char const*) ; 
 int FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 TYPE_1__* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (char const*,char const*) ; 
 size_t FUNC7 (char const*) ; 
 scalar_t__ FUNC8 (char const*,char*,size_t) ; 

__attribute__((used)) static int FUNC9(EVP_TEST *t, const char *alg)
{
    EVP_MAC *mac = NULL;
    int type = NID_undef;
    MAC_DATA *mdat;

    if ((mac = FUNC0(NULL, alg, NULL)) == NULL) {
        /*
         * Since we didn't find an EVP_MAC, we check for known EVP_PKEY methods
         * For debugging purposes, we allow 'NNNN by EVP_PKEY' to force running
         * the EVP_PKEY method.
         */
        size_t sz = FUNC7(alg);
        static const char epilogue[] = " by EVP_PKEY";

        if (sz >= sizeof(epilogue)
            && FUNC6(alg + sz - (sizeof(epilogue) - 1), epilogue) == 0)
            sz -= sizeof(epilogue) - 1;

        if (FUNC8(alg, "HMAC", sz) == 0) {
            type = EVP_PKEY_HMAC;
        } else if (FUNC8(alg, "CMAC", sz) == 0) {
#ifndef OPENSSL_NO_CMAC
            type = EVP_PKEY_CMAC;
#else
            t->skip = 1;
            return 1;
#endif
        } else if (FUNC8(alg, "Poly1305", sz) == 0) {
#ifndef OPENSSL_NO_POLY1305
            type = EVP_PKEY_POLY1305;
#else
            t->skip = 1;
            return 1;
#endif
        } else if (FUNC8(alg, "SipHash", sz) == 0) {
#ifndef OPENSSL_NO_SIPHASH
            type = EVP_PKEY_SIPHASH;
#else
            t->skip = 1;
            return 1;
#endif
        } else {
            /*
             * Not a known EVP_PKEY method either.  If it's a known OID, then
             * assume it's been disabled.
             */
            if (FUNC2(alg) != NID_undef || FUNC1(alg) != NID_undef) {
                t->skip = 1;
                return 1;
            }

            return 0;
        }
    }

    mdat = FUNC4(sizeof(*mdat));
    mdat->type = type;
    mdat->mac_name = FUNC3(alg);
    mdat->mac = mac;
    mdat->controls = FUNC5();
    t->data = mdat;
    return 1;
}