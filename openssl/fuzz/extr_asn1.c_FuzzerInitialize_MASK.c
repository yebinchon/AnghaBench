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

/* Variables and functions */
 int ASN1_PCTX_FLAGS_SHOW_ABSENT ; 
 int ASN1_PCTX_FLAGS_SHOW_FIELD_STRUCT_NAME ; 
 int ASN1_PCTX_FLAGS_SHOW_SEQUENCE ; 
 int ASN1_PCTX_FLAGS_SHOW_SSOF ; 
 int ASN1_PCTX_FLAGS_SHOW_TYPE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int ASN1_STRFLGS_DUMP_ALL ; 
 int ASN1_STRFLGS_SHOW_TYPE ; 
 int ASN1_STRFLGS_UTF8_CONVERT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  OPENSSL_INIT_LOAD_CRYPTO_STRINGS ; 
 int /*<<< orphan*/  OPENSSL_INIT_LOAD_SSL_STRINGS ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pctx ; 

int FUNC8(int *argc, char ***argv)
{
    pctx = FUNC0();
    FUNC1(pctx, ASN1_PCTX_FLAGS_SHOW_ABSENT |
        ASN1_PCTX_FLAGS_SHOW_SEQUENCE | ASN1_PCTX_FLAGS_SHOW_SSOF |
        ASN1_PCTX_FLAGS_SHOW_TYPE | ASN1_PCTX_FLAGS_SHOW_FIELD_STRUCT_NAME);
    FUNC2(pctx, ASN1_STRFLGS_UTF8_CONVERT |
        ASN1_STRFLGS_SHOW_TYPE | ASN1_STRFLGS_DUMP_ALL);

    FUNC6(OPENSSL_INIT_LOAD_CRYPTO_STRINGS, NULL);
    FUNC7(OPENSSL_INIT_LOAD_SSL_STRINGS, NULL);
    FUNC4();
    FUNC3(0, -1);
    FUNC5();

    return 1;
}