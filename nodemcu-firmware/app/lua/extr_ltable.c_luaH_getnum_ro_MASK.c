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
typedef  int /*<<< orphan*/  TValue ;

/* Variables and functions */
 int /*<<< orphan*/  const* luaO_nilobject ; 

const TValue *FUNC0 (void *t, int key) {
  const TValue *res = NULL;  // integer values not supported: luaR_findentryN(t, key, NULL);
  return res ? res : luaO_nilobject;
}