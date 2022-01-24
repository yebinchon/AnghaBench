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
struct do_all_data_st {int /*<<< orphan*/  (* free_method ) (void*) ;int /*<<< orphan*/  user_arg; int /*<<< orphan*/  (* user_fn ) (void*,int /*<<< orphan*/ ) ;void* (* new_method ) (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  implementation; int /*<<< orphan*/  algorithm_names; } ;
typedef  int /*<<< orphan*/  OSSL_PROVIDER ;
typedef  int /*<<< orphan*/  OSSL_NAMEMAP ;
typedef  TYPE_1__ OSSL_ALGORITHM ;
typedef  int /*<<< orphan*/  OPENSSL_CTX ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 void* FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 

__attribute__((used)) static void FUNC6(OSSL_PROVIDER *provider, const OSSL_ALGORITHM *algo,
                   int no_store, void *vdata)
{
    struct do_all_data_st *data = vdata;
    OPENSSL_CTX *libctx = FUNC2(provider);
    OSSL_NAMEMAP *namemap = FUNC1(libctx);
    int name_id = FUNC0(namemap, algo->algorithm_names);
    void *method = NULL;

    if (name_id != 0)
        method = data->new_method(name_id, algo->implementation, provider);

    if (method != NULL) {
        data->user_fn(method, data->user_arg);
        data->free_method(method);
    }
}