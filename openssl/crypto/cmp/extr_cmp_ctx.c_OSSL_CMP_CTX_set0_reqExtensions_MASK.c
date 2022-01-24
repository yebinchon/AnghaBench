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
struct TYPE_3__ {int /*<<< orphan*/ * reqExtensions; int /*<<< orphan*/  subjectAltNames; } ;
typedef  TYPE_1__ OSSL_CMP_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  CMP_R_MULTIPLE_SAN_SOURCES ; 
 int /*<<< orphan*/  CMP_R_NULL_ARGUMENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NID_subject_alt_name ; 
 int /*<<< orphan*/  X509_EXTENSION_free ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC4(OSSL_CMP_CTX *ctx, X509_EXTENSIONS *exts)
{
    if (ctx == NULL) {
        FUNC0(0, CMP_R_NULL_ARGUMENT);
        return 0;
    }

    if (FUNC2(ctx->subjectAltNames) > 0 && exts != NULL
            && FUNC1(exts, NID_subject_alt_name, -1) >= 0) {
        FUNC0(0, CMP_R_MULTIPLE_SAN_SOURCES);
        return 0;
    }
    FUNC3(ctx->reqExtensions, X509_EXTENSION_free);
    ctx->reqExtensions = exts;
    return 1;
}