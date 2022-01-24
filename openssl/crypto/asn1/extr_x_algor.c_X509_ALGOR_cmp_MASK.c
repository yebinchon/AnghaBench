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
struct TYPE_4__ {int /*<<< orphan*/  parameter; int /*<<< orphan*/  algorithm; } ;
typedef  TYPE_1__ X509_ALGOR ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC2(const X509_ALGOR *a, const X509_ALGOR *b)
{
    int rv;
    rv = FUNC1(a->algorithm, b->algorithm);
    if (rv)
        return rv;
    if (!a->parameter && !b->parameter)
        return 0;
    return FUNC0(a->parameter, b->parameter);
}