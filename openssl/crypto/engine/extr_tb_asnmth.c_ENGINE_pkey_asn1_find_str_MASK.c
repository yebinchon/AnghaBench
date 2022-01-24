#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  struct_ref; } ;
struct TYPE_6__ {char const* str; int len; int /*<<< orphan*/  const* ameth; TYPE_2__* e; } ;
typedef  int /*<<< orphan*/  EVP_PKEY_ASN1_METHOD ;
typedef  TYPE_1__ ENGINE_FIND_STR ;
typedef  TYPE_2__ ENGINE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENGINE_F_ENGINE_PKEY_ASN1_FIND_STR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  do_engine_lock_init ; 
 int /*<<< orphan*/  engine_lock_init ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  global_engine_lock ; 
 int /*<<< orphan*/  look_str_cb ; 
 int /*<<< orphan*/  pkey_asn1_meth_table ; 

const EVP_PKEY_ASN1_METHOD *FUNC6(ENGINE **pe,
                                                      const char *str,
                                                      int len)
{
    ENGINE_FIND_STR fstr;
    fstr.e = NULL;
    fstr.ameth = NULL;
    fstr.str = str;
    fstr.len = len;

    if (!FUNC3(&engine_lock_init, do_engine_lock_init)) {
        FUNC2(ENGINE_F_ENGINE_PKEY_ASN1_FIND_STR, ERR_R_MALLOC_FAILURE);
        return NULL;
    }

    FUNC1(global_engine_lock);
    FUNC5(pkey_asn1_meth_table, look_str_cb, &fstr);
    /* If found obtain a structural reference to engine */
    if (fstr.e) {
        fstr.e->struct_ref++;
        FUNC4(fstr.e, 0, 1);
    }
    *pe = fstr.e;
    FUNC0(global_engine_lock);
    return fstr.ameth;
}