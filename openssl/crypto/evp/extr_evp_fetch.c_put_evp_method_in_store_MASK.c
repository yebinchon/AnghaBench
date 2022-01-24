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
typedef  int /*<<< orphan*/  uint32_t ;
struct evp_method_data_st {int /*<<< orphan*/  destruct_method; int /*<<< orphan*/  refcnt_up_method; } ;
typedef  int /*<<< orphan*/  OSSL_PROVIDER ;
typedef  int /*<<< orphan*/  OSSL_NAMEMAP ;
typedef  int /*<<< orphan*/  OPENSSL_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  NAME_SEPARATOR ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 void* FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (void*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,char const*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,char const*,size_t) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 char* FUNC5 (char const*,int /*<<< orphan*/ ) ; 
 size_t FUNC6 (char const*) ; 

__attribute__((used)) static int FUNC7(OPENSSL_CTX *libctx, void *store,
                                   void *method, const OSSL_PROVIDER *prov,
                                   int operation_id, const char *names,
                                   const char *propdef, void *data)
{
    struct evp_method_data_st *methdata = data;
    OSSL_NAMEMAP *namemap;
    int name_id;
    uint32_t meth_id;
    size_t l = 0;

    /*
     * put_evp_method_in_store() is only called with an EVP method that was
     * successfully created by construct_method() below, which means that
     * all the names should already be stored in the namemap with the same
     * numeric identity, so just use the first to get that identity.
     */
    if (names != NULL) {
        const char *q = FUNC5(names, NAME_SEPARATOR);

        l = (q == NULL ? FUNC6(names) : (size_t)(q - names));
    }

    if ((namemap = FUNC4(libctx)) == NULL
        || (name_id = FUNC3(namemap, names, l)) == 0
        || (meth_id = FUNC0(operation_id, name_id)) == 0)
        return 0;

    if (store == NULL
        && (store = FUNC1(libctx)) == NULL)
        return 0;

    return FUNC2(store, prov, meth_id, propdef, method,
                                 methdata->refcnt_up_method,
                                 methdata->destruct_method);
}