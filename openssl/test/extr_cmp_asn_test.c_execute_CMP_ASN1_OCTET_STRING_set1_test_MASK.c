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
struct TYPE_3__ {scalar_t__ expected; int /*<<< orphan*/  src_string; int /*<<< orphan*/  tgt_string; } ;
typedef  TYPE_1__ CMP_ASN_TEST_FIXTURE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(CMP_ASN_TEST_FIXTURE *
                                                   fixture)
{
    if (!FUNC1(fixture->expected,
                     FUNC2(&fixture->tgt_string,
                                                     fixture->src_string)))
        return 0;
    if (fixture->expected != 0)
        return FUNC1(0, FUNC0(fixture->tgt_string,
                                                    fixture->src_string));
    return 1;
}