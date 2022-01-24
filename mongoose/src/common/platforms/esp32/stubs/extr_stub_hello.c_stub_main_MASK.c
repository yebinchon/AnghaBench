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
typedef  int uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,int) ; 
 int /*<<< orphan*/  _bss_end ; 
 int /*<<< orphan*/  _bss_start ; 
 int* buf ; 
 int* hello ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

void FUNC2(void) {
  uint32_t greeting = 0x4941484f;
  FUNC0(&greeting, 4);
  FUNC1(&_bss_start, 0, (&_bss_end - &_bss_start));
  buf[1] = 123;
  FUNC0(hello, 5);
  while (1) {
  }
}