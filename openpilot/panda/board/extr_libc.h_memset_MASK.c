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
typedef  int uint8_t ;

/* Variables and functions */

void *FUNC0(void *str, int c, unsigned int n) {
  uint8_t *s = str;
  for (unsigned int i = 0; i < n; i++) {
    *s = c;
    s++;
  }
  return str;
}