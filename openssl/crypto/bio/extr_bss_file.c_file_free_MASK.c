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
struct TYPE_3__ {int flags; scalar_t__ init; int /*<<< orphan*/ * ptr; scalar_t__ shutdown; } ;
typedef  TYPE_1__ BIO ;

/* Variables and functions */
 int BIO_FLAGS_UPLINK_INTERNAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(BIO *a)
{
    if (a == NULL)
        return 0;
    if (a->shutdown) {
        if ((a->init) && (a->ptr != NULL)) {
            if (a->flags & BIO_FLAGS_UPLINK_INTERNAL)
                FUNC0(a->ptr);
            else
                FUNC1(a->ptr);
            a->ptr = NULL;
            a->flags = BIO_FLAGS_UPLINK_INTERNAL;
        }
        a->init = 0;
    }
    return 1;
}