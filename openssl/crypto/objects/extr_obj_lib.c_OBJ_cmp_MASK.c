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
struct TYPE_4__ {int length; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ ASN1_OBJECT ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int FUNC1(const ASN1_OBJECT *a, const ASN1_OBJECT *b)
{
    int ret;

    ret = (a->length - b->length);
    if (ret)
        return ret;
    return FUNC0(a->data, b->data, a->length);
}