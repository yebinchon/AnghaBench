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

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ mem ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static int __attribute__((always_inline)) FUNC2() {
  int i, hit = 0;
  for (i = 0; i < 256; i++) {
    if (FUNC0(mem + i * 4096)) {
      hit = i + 1;
    }
    FUNC1();
  }
  return hit - 1;
}