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
struct TYPE_5__ {int /*<<< orphan*/  generalInfo; } ;
struct TYPE_4__ {TYPE_2__* hdr; } ;
typedef  int /*<<< orphan*/  OSSL_CMP_ITAV ;
typedef  TYPE_1__ CMP_HDR_TEST_FIXTURE ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(CMP_HDR_TEST_FIXTURE *fixture)
{
    OSSL_CMP_ITAV *itav = FUNC0();

    if (!FUNC2(itav))
        return 0;

    if (!FUNC1(
            FUNC4(fixture->hdr, itav), 1))
        return 0;
    if (!FUNC3(itav == FUNC5(
            fixture->hdr->generalInfo, 0)))
        return 0;

    return 1;
}