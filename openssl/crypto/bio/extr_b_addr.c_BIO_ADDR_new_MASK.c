#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  sa_family; } ;
struct TYPE_6__ {TYPE_1__ sa; } ;
typedef  TYPE_2__ BIO_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNSPEC ; 
 int /*<<< orphan*/  BIO_F_BIO_ADDR_NEW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 TYPE_2__* FUNC1 (int) ; 

BIO_ADDR *FUNC2(void)
{
    BIO_ADDR *ret = FUNC1(sizeof(*ret));

    if (ret == NULL) {
        FUNC0(BIO_F_BIO_ADDR_NEW, ERR_R_MALLOC_FAILURE);
        return NULL;
    }

    ret->sa.sa_family = AF_UNSPEC;
    return ret;
}