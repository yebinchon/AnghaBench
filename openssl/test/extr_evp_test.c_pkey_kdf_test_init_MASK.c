#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int skip; TYPE_1__* data; } ;
struct TYPE_7__ {int /*<<< orphan*/ * ctx; } ;
typedef  TYPE_1__ PKEY_KDF_DATA ;
typedef  TYPE_2__ EVP_TEST ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int NID_undef ; 
 int FUNC3 (char const*) ; 
 int FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 TYPE_1__* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 scalar_t__ FUNC8 (char const*,char*) ; 

__attribute__((used)) static int FUNC9(EVP_TEST *t, const char *name)
{
    PKEY_KDF_DATA *kdata;
    int kdf_nid = FUNC4(name);

#ifdef OPENSSL_NO_SCRYPT
    if (strcmp(name, "scrypt") == 0) {
        t->skip = 1;
        return 1;
    }
#endif /* OPENSSL_NO_SCRYPT */

#ifdef OPENSSL_NO_CMS
    if (strcmp(name, "X942KDF") == 0) {
        t->skip = 1;
        return 1;
    }
#endif /* OPENSSL_NO_CMS */

    if (kdf_nid == NID_undef)
        kdf_nid = FUNC3(name);

    if (!FUNC7(kdata = FUNC6(sizeof(*kdata))))
        return 0;
    kdata->ctx = FUNC1(kdf_nid, NULL);
    if (kdata->ctx == NULL) {
        FUNC5(kdata);
        return 0;
    }
    if (FUNC2(kdata->ctx) <= 0) {
        FUNC0(kdata->ctx);
        FUNC5(kdata);
        return 0;
    }
    t->data = kdata;
    return 1;
}