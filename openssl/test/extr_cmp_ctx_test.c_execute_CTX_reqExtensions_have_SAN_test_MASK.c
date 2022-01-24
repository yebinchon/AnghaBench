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
typedef  int /*<<< orphan*/  X509_EXTENSIONS ;
typedef  int /*<<< orphan*/  X509_EXTENSION ;
struct TYPE_3__ {int /*<<< orphan*/ * ctx; } ;
typedef  TYPE_1__ OSSL_CMP_CTX_TEST_FIXTURE ;
typedef  int /*<<< orphan*/  OSSL_CMP_CTX ;
typedef  int /*<<< orphan*/  ASN1_OCTET_STRING ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char*,int const) ; 
 int /*<<< orphan*/  NID_subject_alt_name ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (unsigned char*,int const) ; 
 int FUNC6 (int) ; 
 scalar_t__ FUNC7 (int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 () ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC16(
                                             OSSL_CMP_CTX_TEST_FIXTURE *fixture)
{
    OSSL_CMP_CTX *ctx = fixture->ctx;
    const int len = 16;
    unsigned char str[16 /* = len */ ];
    ASN1_OCTET_STRING *data = NULL;
    X509_EXTENSION *ext = NULL;
    X509_EXTENSIONS *exts = NULL;
    int res = 0;

    if (!FUNC6(FUNC3(ctx)))
        return 0;

    if (!FUNC7(1, FUNC5(str, len))
            || !FUNC8(data = FUNC1())
            || !FUNC9(FUNC2(data, str, len)))
        goto err;
    ext = FUNC10(NULL, NID_subject_alt_name, 0, data);
    if (!FUNC8(ext)
            || !FUNC8(exts = FUNC13())
            || !FUNC9(FUNC15(exts, ext))
            || !FUNC9(FUNC4(ctx, exts))) {
        FUNC11(ext);
        FUNC12(exts);
        goto err;
    }
    if (FUNC7(FUNC3(ctx), 1)) {
        ext = FUNC14(exts);
        res = FUNC6(FUNC3(ctx));
        FUNC11(ext);
    }
 err:
    FUNC0(data);
    return res;
}