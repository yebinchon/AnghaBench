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
struct TYPE_3__ {size_t ctype_len; int /*<<< orphan*/ * ctype; } ;
typedef  TYPE_1__ CERT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (unsigned char const*,size_t) ; 

__attribute__((used)) static int FUNC2(CERT *c, const unsigned char *p, size_t len)
{
    FUNC0(c->ctype);
    c->ctype = NULL;
    c->ctype_len = 0;
    if (p == NULL || len == 0)
        return 1;
    if (len > 0xff)
        return 0;
    c->ctype = FUNC1(p, len);
    if (c->ctype == NULL)
        return 0;
    c->ctype_len = len;
    return 1;
}