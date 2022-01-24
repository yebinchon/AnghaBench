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
struct evp_method_data_st {int name_id; char* names; int /*<<< orphan*/  (* refcnt_up_method ) (void*) ;int /*<<< orphan*/  propquery; int /*<<< orphan*/  operation_id; } ;
typedef  int /*<<< orphan*/  OSSL_NAMEMAP ;
typedef  int /*<<< orphan*/  OPENSSL_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  NAME_SEPARATOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 void* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void**) ; 
 int FUNC3 (int /*<<< orphan*/ *,char const*,size_t) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 char* FUNC5 (char const*,int /*<<< orphan*/ ) ; 
 size_t FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (void*) ; 

__attribute__((used)) static void *FUNC8(OPENSSL_CTX *libctx, void *store,
                                       void *data)
{
    struct evp_method_data_st *methdata = data;
    void *method = NULL;
    int name_id;
    uint32_t meth_id;

    /*
     * get_evp_method_from_store() is only called to try and get the method
     * that evp_generic_fetch() is asking for, and the operation id as well
     * as the name or name id are passed via methdata.
     */
    if ((name_id = methdata->name_id) == 0) {
        OSSL_NAMEMAP *namemap = FUNC4(libctx);
        const char *names = methdata->names;
        const char *q = FUNC5(names, NAME_SEPARATOR);
        size_t l = (q == NULL ? FUNC6(names) : (size_t)(q - names));

        if (namemap == 0)
            return NULL;
        name_id = FUNC3(namemap, names, l);
    }

    if (name_id == 0
        || (meth_id = FUNC0(methdata->operation_id, name_id)) == 0)
        return NULL;

    if (store == NULL
        && (store = FUNC1(libctx)) == NULL)
        return NULL;

    (void)FUNC2(store, meth_id, methdata->propquery,
                                  &method);

    if (method != NULL
        && !methdata->refcnt_up_method(method)) {
        method = NULL;
    }
    return method;
}