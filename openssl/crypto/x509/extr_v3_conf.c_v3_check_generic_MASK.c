#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 scalar_t__ FUNC0 (char const) ; 
 int FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (char const*,char*,int) ; 

__attribute__((used)) static int FUNC3(const char **value)
{
    int gen_type = 0;
    const char *p = *value;
    if ((FUNC1(p) >= 4) && FUNC2(p, "DER:", 4) == 0) {
        p += 4;
        gen_type = 1;
    } else if ((FUNC1(p) >= 5) && FUNC2(p, "ASN1:", 5) == 0) {
        p += 5;
        gen_type = 2;
    } else
        return 0;

    while (FUNC0(*p))
        p++;
    *value = p;
    return gen_type;
}