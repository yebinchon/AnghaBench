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
struct TYPE_4__ {scalar_t__ data_size; int /*<<< orphan*/ * data; } ;
typedef  TYPE_1__ OSSL_PARAM ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_LIB_PROV ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,size_t) ; 
 unsigned char* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__ const*,void**,int /*<<< orphan*/ ,size_t*) ; 

__attribute__((used)) static int FUNC4(unsigned char **buffer, size_t *buflen,
                             const OSSL_PARAM *p)
{
    FUNC1(*buffer, *buflen);
    if (p->data_size == 0) {
        if ((*buffer = FUNC2(1)) == NULL) {
            FUNC0(ERR_LIB_PROV, ERR_R_MALLOC_FAILURE);
            return 0;
        }
    } else if (p->data != NULL) {
        *buffer = NULL;
        if (!FUNC3(p, (void **)buffer, 0, buflen))
            return 0;
    }
    return 1;
}