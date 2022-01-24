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
 int /*<<< orphan*/  FUNC0 (char) ; 

void FUNC1(unsigned int i) {
  char c[] = "0123456789abcdef";
  for (int pos = 28; pos != -4; pos -= 4) {
    FUNC0(c[(i >> (unsigned int)(pos)) & 0xFU]);
  }
}