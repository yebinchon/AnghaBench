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
struct TYPE_5__ {scalar_t__ refcount; } ;
typedef  TYPE_1__ item ;
typedef  int /*<<< orphan*/  conn ;

/* Variables and functions */
 scalar_t__ IT_REFCOUNT_LIMIT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 (char*,size_t,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline item* FUNC3(char *key, size_t nkey, conn *c, bool do_update, uint32_t *hv) {
    item *it;
    it = FUNC1(key, nkey, c, do_update, hv);
    if (it && it->refcount > IT_REFCOUNT_LIMIT) {
        FUNC0(it);
        it = NULL;
        FUNC2(*hv);
    }
    return it;
}