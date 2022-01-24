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
typedef  TYPE_1__ EVP_MD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__ const*) ; 
 char const* FUNC1 (int /*<<< orphan*/ ) ; 
 char const* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

const char *FUNC3(const EVP_MD *md)
{
    if (md->prov != NULL)
        return FUNC2(md->prov, md->name_id);
#ifndef FIPS_MODE
    return FUNC1(FUNC0(md));
#else
    return NULL;
#endif
}