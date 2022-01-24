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
struct TYPE_3__ {scalar_t__ name; } ;
typedef  TYPE_1__ X509_VERIFY_PARAM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (char const*) ; 

int FUNC2(X509_VERIFY_PARAM *param, const char *name)
{
    FUNC0(param->name);
    param->name = FUNC1(name);
    if (param->name)
        return 1;
    return 0;
}