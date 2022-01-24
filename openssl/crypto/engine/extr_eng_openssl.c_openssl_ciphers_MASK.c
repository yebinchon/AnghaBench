#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  EVP_CIPHER ;
typedef  int /*<<< orphan*/  ENGINE ;

/* Variables and functions */
 int NID_rc4 ; 
 int NID_rc4_40 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC1 (int const**) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 () ; 

__attribute__((used)) static int FUNC4(ENGINE *e, const EVP_CIPHER **cipher,
                           const int **nids, int nid)
{
    if (!cipher) {
        /* We are returning a list of supported nids */
        return FUNC1(nids);
    }
    /* We are being asked for a specific cipher */
    if (nid == NID_rc4)
        *cipher = FUNC3();
    else if (nid == NID_rc4_40)
        *cipher = FUNC2();
    else {
# ifdef TEST_ENG_OPENSSL_RC4_OTHERS
        fprintf(stderr, "(TEST_ENG_OPENSSL_RC4) returning NULL for "
                "nid %d\n", nid);
# endif
        *cipher = NULL;
        return 0;
    }
    return 1;
}