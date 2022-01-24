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
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_5__ {int /*<<< orphan*/  nkey; } ;
typedef  TYPE_1__ item ;
typedef  enum store_item_type { ____Placeholder_store_item_type } store_item_type ;
typedef  int /*<<< orphan*/  conn ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

enum store_item_type FUNC5(item *item, int comm, conn* c) {
    enum store_item_type ret;
    uint32_t hv;

    hv = FUNC2(FUNC0(item), item->nkey);
    FUNC3(hv);
    ret = FUNC1(item, comm, c, hv);
    FUNC4(hv);
    return ret;
}