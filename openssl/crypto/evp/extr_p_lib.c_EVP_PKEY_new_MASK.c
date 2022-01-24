#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int references; int save_parameters; int /*<<< orphan*/ * lock; void* save_type; void* type; } ;
typedef  TYPE_1__ EVP_PKEY ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  EVP_F_EVP_PKEY_NEW ; 
 void* EVP_PKEY_NONE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 (int) ; 

EVP_PKEY *FUNC4(void)
{
    EVP_PKEY *ret = FUNC3(sizeof(*ret));

    if (ret == NULL) {
        FUNC1(EVP_F_EVP_PKEY_NEW, ERR_R_MALLOC_FAILURE);
        return NULL;
    }
    ret->type = EVP_PKEY_NONE;
    ret->save_type = EVP_PKEY_NONE;
    ret->references = 1;
    ret->save_parameters = 1;
    ret->lock = FUNC0();
    if (ret->lock == NULL) {
        FUNC1(EVP_F_EVP_PKEY_NEW, ERR_R_MALLOC_FAILURE);
        FUNC2(ret);
        return NULL;
    }
    return ret;
}