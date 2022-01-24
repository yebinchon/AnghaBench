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
struct TYPE_4__ {int* data; } ;
typedef  TYPE_1__ aarch64_operand_error ;

/* Variables and functions */
 int /*<<< orphan*/  AARCH64_OPDE_REG_LIST ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void
FUNC1 (aarch64_operand_error *mismatch_detail, int idx,
		    int expected_num)
{
  if (mismatch_detail == NULL)
    return;
  FUNC0 (mismatch_detail, AARCH64_OPDE_REG_LIST, idx, NULL);
  mismatch_detail->data[0] = expected_num;
}