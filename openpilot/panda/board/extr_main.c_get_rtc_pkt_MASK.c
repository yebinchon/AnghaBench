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
typedef  int /*<<< orphan*/  timestamp_t ;
typedef  int /*<<< orphan*/  t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 

int FUNC2(void *dat) {
  timestamp_t t = FUNC1();
  (void)FUNC0(dat, &t, sizeof(t));
  return sizeof(t);
}