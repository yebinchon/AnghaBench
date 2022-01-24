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
typedef  int /*<<< orphan*/  OSSL_NAMEMAP ;
typedef  int /*<<< orphan*/  OPENSSL_CTX ;
typedef  int /*<<< orphan*/  EVP_CIPHER ;

/* Variables and functions */
 int /*<<< orphan*/  OBJ_NAME_TYPE_CIPHER_METH ; 
 scalar_t__ FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OPENSSL_INIT_ADD_ALL_CIPHERS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cipher_from_name ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/  const**) ; 
 int FUNC3 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 

const EVP_CIPHER *FUNC5(OPENSSL_CTX *libctx, const char *name)
{
    const EVP_CIPHER *cp;
    OSSL_NAMEMAP *namemap;
    int id;

    if (!FUNC1(OPENSSL_INIT_ADD_ALL_CIPHERS, NULL))
        return NULL;

    cp = (const EVP_CIPHER *)FUNC0(name, OBJ_NAME_TYPE_CIPHER_METH);

    if (cp != NULL)
        return cp;

    /*
     * It's not in the method database, but it might be there under a different
     * name. So we check for aliases in the EVP namemap and try all of those
     * in turn.
     */

    namemap = FUNC4(libctx);
    id = FUNC3(namemap, name);
    if (id == 0)
        return NULL;

    FUNC2(namemap, id, cipher_from_name, &cp);

    return cp;
}