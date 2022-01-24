#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  int_val; } ;
struct TYPE_10__ {TYPE_1__ v; } ;
typedef  TYPE_2__ PROPERTY_DEFINITION ;
typedef  int /*<<< orphan*/  OPENSSL_CTX ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const) ; 
 scalar_t__ FUNC1 (char const) ; 
 int FUNC2 (char const**,TYPE_2__*) ; 
 int FUNC3 (char const**,TYPE_2__*) ; 
 int FUNC4 (char const**,TYPE_2__*) ; 
 int FUNC5 (int /*<<< orphan*/ *,char const**,char const,TYPE_2__*,int) ; 
 int FUNC6 (int /*<<< orphan*/ *,char const**,TYPE_2__*,int) ; 

__attribute__((used)) static int FUNC7(OPENSSL_CTX *ctx, const char *t[],
                       PROPERTY_DEFINITION *res, int create)
{
    const char *s = *t;
    int r = 0;

    if (*s == '"' || *s == '\'') {
        s++;
        r = FUNC5(ctx, &s, s[-1], res, create);
    } else if (*s == '+') {
        s++;
        r = FUNC3(&s, res);
    } else if (*s == '-') {
        s++;
        r = FUNC3(&s, res);
        res->v.int_val = -res->v.int_val;
    } else if (*s == '0' && s[1] == 'x') {
        s += 2;
        r = FUNC2(&s, res);
    } else if (*s == '0' && FUNC1(s[1])) {
        s++;
        r = FUNC4(&s, res);
    } else if (FUNC1(*s)) {
        return FUNC3(t, res);
    } else if (FUNC0(*s))
        return FUNC6(ctx, t, res, create);
    if (r)
        *t = s;
    return r;
}