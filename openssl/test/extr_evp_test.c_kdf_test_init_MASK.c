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
struct TYPE_7__ {int /*<<< orphan*/ * ctx; int /*<<< orphan*/ * p; int /*<<< orphan*/ * params; } ;
typedef  TYPE_1__ KDF_DATA ;
typedef  TYPE_2__ EVP_TEST ;
typedef  int /*<<< orphan*/  EVP_KDF ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 TYPE_1__* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 scalar_t__ FUNC7 (char const*,char*) ; 

__attribute__((used)) static int FUNC8(EVP_TEST *t, const char *name)
{
    KDF_DATA *kdata;
    EVP_KDF *kdf;

#ifdef OPENSSL_NO_SCRYPT
    /* TODO(3.0) Replace with "scrypt" once aliases are supported */
    if (strcmp(name, "id-scrypt") == 0) {
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

    if (!FUNC6(kdata = FUNC4(sizeof(*kdata))))
        return 0;
    kdata->p = kdata->params;
    *kdata->p = FUNC5();

    kdf = FUNC1(NULL, name, NULL);
    if (kdf == NULL) {
        FUNC3(kdata);
        return 0;
    }
    kdata->ctx = FUNC0(kdf);
    FUNC2(kdf);
    if (kdata->ctx == NULL) {
        FUNC3(kdata);
        return 0;
    }
    t->data = kdata;
    return 1;
}