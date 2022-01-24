#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  num; int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 (int /*<<< orphan*/ ,unsigned char,char const*,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,char const*,int) ; 

__attribute__((used)) static int FUNC8(BIO *b, const char *in, int inl)
{
    int ret = 0;

    FUNC5();
# ifndef OPENSSL_NO_KTLS
    if (FUNC3(b)) {
        unsigned char record_type = (intptr_t)b->ptr;
        ret = FUNC6(b->num, record_type, in, inl);
        if (ret >= 0) {
            ret = inl;
            FUNC0(b);
        }
    } else
# endif
        ret = FUNC7(b->num, in, inl);
    FUNC1(b);
    if (ret <= 0) {
        if (FUNC4(ret))
            FUNC2(b);
    }
    return ret;
}