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
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  X509_STORE_CTX ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
#define  X509_V_ERR_CERT_HAS_EXPIRED 130 
#define  X509_V_ERR_CERT_NOT_YET_VALID 129 
#define  X509_V_ERR_DEPTH_ZERO_SELF_SIGNED_CERT 128 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 char* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC8(int ok, X509_STORE_CTX *ctx)
{
    char *s, buf[256];

    s = FUNC0(FUNC4(FUNC1(ctx)),
                          buf, sizeof(buf));
    if (s != NULL) {
        if (ok)
            FUNC7("depth=%d %s\n", FUNC3(ctx), buf);
        else {
            FUNC6(stderr, "depth=%d error=%d %s\n",
                    FUNC3(ctx),
                    FUNC2(ctx), buf);
        }
    }

    if (ok == 0) {
        int i = FUNC2(ctx);

        switch (i) {
        default:
            FUNC6(stderr, "Error string: %s\n",
                    FUNC5(i));
            break;
        case X509_V_ERR_CERT_NOT_YET_VALID:
        case X509_V_ERR_CERT_HAS_EXPIRED:
        case X509_V_ERR_DEPTH_ZERO_SELF_SIGNED_CERT:
            ok = 1;
            break;
        }
    }

    return ok;
}