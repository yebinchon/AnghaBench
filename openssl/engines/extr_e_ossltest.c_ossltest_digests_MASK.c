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
typedef  int /*<<< orphan*/  EVP_MD ;
typedef  int /*<<< orphan*/  ENGINE ;

/* Variables and functions */
#define  NID_md5 132 
#define  NID_sha1 131 
#define  NID_sha256 130 
#define  NID_sha384 129 
#define  NID_sha512 128 
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int FUNC5 (int const**) ; 

__attribute__((used)) static int FUNC6(ENGINE *e, const EVP_MD **digest,
                          const int **nids, int nid)
{
    int ok = 1;
    if (!digest) {
        /* We are returning a list of supported nids */
        return FUNC5(nids);
    }
    /* We are being asked for a specific digest */
    switch (nid) {
    case NID_md5:
        *digest = FUNC0();
        break;
    case NID_sha1:
        *digest = FUNC1();
        break;
    case NID_sha256:
        *digest = FUNC2();
        break;
    case NID_sha384:
        *digest = FUNC3();
        break;
    case NID_sha512:
        *digest = FUNC4();
        break;
    default:
        ok = 0;
        *digest = NULL;
        break;
    }
    return ok;
}