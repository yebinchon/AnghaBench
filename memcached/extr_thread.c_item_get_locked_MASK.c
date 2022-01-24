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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  item ;
typedef  int /*<<< orphan*/  conn ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char const*,size_t const,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int const) ; 
 int /*<<< orphan*/  FUNC1 (char const*,size_t const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

item *FUNC3(const char *key, const size_t nkey, conn *c, const bool do_update, uint32_t *hv) {
    item *it;
    *hv = FUNC1(key, nkey);
    FUNC2(*hv);
    it = FUNC0(key, nkey, *hv, c, do_update);
    return it;
}