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
typedef  int /*<<< orphan*/  v ;
struct TYPE_4__ {int /*<<< orphan*/  str_val; } ;
struct TYPE_5__ {int /*<<< orphan*/  type; TYPE_1__ v; } ;
typedef  TYPE_2__ PROPERTY_DEFINITION ;
typedef  int /*<<< orphan*/  OPENSSL_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_LIB_PROP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  PROPERTY_TYPE_STRING ; 
 int /*<<< orphan*/  PROP_R_NOT_AN_ASCII_CHARACTER ; 
 int /*<<< orphan*/  PROP_R_STRING_TOO_LONG ; 
 scalar_t__ FUNC1 (char const) ; 
 int /*<<< orphan*/  FUNC2 (char const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int const) ; 
 char FUNC4 (char const) ; 
 char* FUNC5 (char const*) ; 

__attribute__((used)) static int FUNC6(OPENSSL_CTX *ctx, const char *t[],
                          PROPERTY_DEFINITION *res, const int create)
{
    char v[1000];
    const char *s = *t;
    size_t i = 0;
    int err = 0;

    if (*s == '\0' || *s == ',')
        return 0;
    while (FUNC1(*s) && !FUNC2(*s) && *s != ',') {
        if (i < sizeof(v) - 1)
            v[i++] = FUNC4(*s);
        else
            err = 1;
        s++;
    }
    if (!FUNC2(*s) && *s != '\0' && *s != ',') {
        FUNC0(ERR_LIB_PROP, PROP_R_NOT_AN_ASCII_CHARACTER,
                       "HERE-->%s", s);
        return 0;
    }
    v[i] = 0;
    if (err) {
        FUNC0(ERR_LIB_PROP, PROP_R_STRING_TOO_LONG, "HERE-->%s", *t);
    } else {
        res->v.str_val = FUNC3(ctx, v, create);
    }
    *t = FUNC5(s);
    res->type = PROPERTY_TYPE_STRING;
    return !err;
}