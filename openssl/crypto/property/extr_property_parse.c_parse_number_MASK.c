#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int int64_t ;
struct TYPE_4__ {int int_val; } ;
struct TYPE_5__ {TYPE_1__ v; int /*<<< orphan*/  type; } ;
typedef  TYPE_2__ PROPERTY_DEFINITION ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_LIB_PROP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  PROPERTY_TYPE_NUMBER ; 
 int /*<<< orphan*/  PROP_R_NOT_A_DECIMAL_DIGIT ; 
 scalar_t__ FUNC1 (char const) ; 
 int /*<<< orphan*/  FUNC2 (char const) ; 
 char* FUNC3 (char const*) ; 

__attribute__((used)) static int FUNC4(const char *t[], PROPERTY_DEFINITION *res)
{
    const char *s = *t;
    int64_t v = 0;

    if (!FUNC1(*s))
        return 0;
    do {
        v = v * 10 + (*s++ - '0');
    } while (FUNC1(*s));
    if (!FUNC2(*s) && *s != '\0' && *s != ',') {
        FUNC0(ERR_LIB_PROP, PROP_R_NOT_A_DECIMAL_DIGIT,
                       "HERE-->%s", *t);
        return 0;
    }
    *t = FUNC3(s);
    res->type = PROPERTY_TYPE_NUMBER;
    res->v.int_val = v;
    return 1;
}