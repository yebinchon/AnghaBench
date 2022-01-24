#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  name_id; int /*<<< orphan*/ * prov; } ;
typedef  TYPE_1__ EVP_CIPHER ;

/* Variables and functions */
 int FUNC0 (TYPE_1__ const*) ; 
 int FUNC1 (char const*) ; 
 int FUNC2 (char const*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 

int FUNC4(const EVP_CIPHER *cipher, const char *name)
{
#ifndef FIPS_MODE
    if (cipher->prov == NULL) {
        int nid = FUNC0(cipher);

        return nid == FUNC2(name) || nid == FUNC1(name);
    }
#endif
    return FUNC3(cipher->prov, cipher->name_id, name);
}