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
 struct async_ctrs* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct async_ctrs*) ; 

__attribute__((used)) static int FUNC4(BIO *bio)
{
    struct async_ctrs *ctrs;

    if (bio == NULL)
        return 0;
    ctrs = FUNC0(bio);
    FUNC3(ctrs);
    FUNC1(bio, NULL);
    FUNC2(bio, 0);

    return 1;
}