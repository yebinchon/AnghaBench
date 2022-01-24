#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/ * next_bio; scalar_t__ ptr; } ;
struct TYPE_7__ {int lwn; } ;
typedef  TYPE_1__ NBIO_TEST ;
typedef  TYPE_2__ BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int FUNC3 (int /*<<< orphan*/ *,char const*,int) ; 
 scalar_t__ FUNC4 (unsigned char*,int) ; 

__attribute__((used)) static int FUNC5(BIO *b, const char *in, int inl)
{
    NBIO_TEST *nt;
    int ret = 0;
    int num;
    unsigned char n;

    if ((in == NULL) || (inl <= 0))
        return 0;
    if (b->next_bio == NULL)
        return 0;
    nt = (NBIO_TEST *)b->ptr;

    FUNC0(b);

    if (nt->lwn > 0) {
        num = nt->lwn;
        nt->lwn = 0;
    } else {
        if (FUNC4(&n, 1) <= 0)
            return -1;
        num = (n & 7);
    }

    if (inl > num)
        inl = num;

    if (num == 0) {
        ret = -1;
        FUNC2(b);
    } else {
        ret = FUNC3(b->next_bio, in, inl);
        if (ret < 0) {
            FUNC1(b);
            nt->lwn = inl;
        }
    }
    return ret;
}