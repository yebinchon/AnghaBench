#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * next_bio; } ;
typedef  TYPE_1__ BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,int) ; 

__attribute__((used)) static int FUNC3(BIO *b, char *out, int outl)
{
    int ret = 0;

    if (out == NULL)
        return 0;
    if (b->next_bio == NULL)
        return 0;
    ret = FUNC2(b->next_bio, out, outl);
    FUNC0(b);
    FUNC1(b);
    return ret;
}