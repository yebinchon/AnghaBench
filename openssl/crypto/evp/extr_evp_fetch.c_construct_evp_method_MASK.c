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
struct evp_method_data_st {void* (* method_from_dispatch ) (int,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ;} ;
typedef  int /*<<< orphan*/  OSSL_PROVIDER ;
typedef  int /*<<< orphan*/  OSSL_NAMEMAP ;
typedef  int /*<<< orphan*/  OSSL_DISPATCH ;
typedef  int /*<<< orphan*/  OPENSSL_CTX ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 void* FUNC3 (int,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void *FUNC4(const char *names, const OSSL_DISPATCH *fns,
                                  OSSL_PROVIDER *prov, void *data)
{
    /*
     * This function is only called if get_evp_method_from_store() returned
     * NULL, so it's safe to say that of all the spots to create a new
     * namemap entry, this is it.  Should the name already exist there, we
     * know that ossl_namemap_add() will return its corresponding number.
     */
    struct evp_method_data_st *methdata = data;
    OPENSSL_CTX *libctx = FUNC2(prov);
    OSSL_NAMEMAP *namemap = FUNC1(libctx);
    int name_id = FUNC0(namemap, names);

    if (name_id == 0)
        return NULL;
    return methdata->method_from_dispatch(name_id, fns, prov);
}