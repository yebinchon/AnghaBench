#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {TYPE_3__* store; } ;
typedef  TYPE_2__ X509_STORE_CTX ;
struct TYPE_14__ {int /*<<< orphan*/  get_cert_methods; int /*<<< orphan*/  objs; } ;
typedef  TYPE_3__ X509_STORE ;
struct TYPE_12__ {int /*<<< orphan*/ * ptr; } ;
struct TYPE_15__ {TYPE_1__ data; int /*<<< orphan*/  type; } ;
typedef  TYPE_4__ X509_OBJECT ;
typedef  int /*<<< orphan*/  X509_NAME ;
typedef  int /*<<< orphan*/  X509_LOOKUP_TYPE ;
typedef  int /*<<< orphan*/  X509_LOOKUP ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  X509_LU_CRL ; 
 int /*<<< orphan*/  X509_LU_NONE ; 
 TYPE_4__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int) ; 

int FUNC7(X509_STORE_CTX *vs, X509_LOOKUP_TYPE type,
                                  X509_NAME *name, X509_OBJECT *ret)
{
    X509_STORE *store = vs->store;
    X509_LOOKUP *lu;
    X509_OBJECT stmp, *tmp;
    int i, j;

    if (store == NULL)
        return 0;

    stmp.type = X509_LU_NONE;
    stmp.data.ptr = NULL;


    FUNC3(store);
    tmp = FUNC1(store->objs, type, name);
    FUNC4(store);

    if (tmp == NULL || type == X509_LU_CRL) {
        for (i = 0; i < FUNC5(store->get_cert_methods); i++) {
            lu = FUNC6(store->get_cert_methods, i);
            j = FUNC0(lu, type, name, &stmp);
            if (j) {
                tmp = &stmp;
                break;
            }
        }
        if (tmp == NULL)
            return 0;
    }

    if (!FUNC2(tmp))
        return 0;

    ret->type = tmp->type;
    ret->data.ptr = tmp->data.ptr;

    return 1;
}