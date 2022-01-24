#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * next_bio; } ;
typedef  TYPE_1__ BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (unsigned char*,int) ; 

__attribute__((used)) static int FUNC5(BIO *b, char *out, int outl)
{
    int ret = 0;
    int num;
    unsigned char n;

    if (out == NULL)
        return 0;
    if (b->next_bio == NULL)
        return 0;

    FUNC0(b);
    if (FUNC4(&n, 1) <= 0)
        return -1;
    num = (n & 0x07);

    if (outl > num)
        outl = num;

    if (num == 0) {
        ret = -1;
        FUNC3(b);
    } else {
        ret = FUNC2(b->next_bio, out, outl);
        if (ret < 0)
            FUNC1(b);
    }
    return ret;
}