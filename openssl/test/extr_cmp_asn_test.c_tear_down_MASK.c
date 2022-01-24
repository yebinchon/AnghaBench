#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ src_string; scalar_t__ tgt_string; } ;
typedef  TYPE_1__ CMP_ASN_TEST_FIXTURE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC2(CMP_ASN_TEST_FIXTURE *fixture)
{
    FUNC0(fixture->src_string);
    if (fixture->tgt_string != fixture->src_string)
        FUNC0(fixture->tgt_string);

    FUNC1(fixture);
}