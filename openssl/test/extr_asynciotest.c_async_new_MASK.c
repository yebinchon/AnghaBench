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
struct async_ctrs {int dummy; } ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct async_ctrs*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 struct async_ctrs* FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(BIO *bio)
{
    struct async_ctrs *ctrs;

    ctrs = FUNC2(sizeof(struct async_ctrs));
    if (ctrs == NULL)
        return 0;

    FUNC0(bio, ctrs);
    FUNC1(bio, 1);
    return 1;
}