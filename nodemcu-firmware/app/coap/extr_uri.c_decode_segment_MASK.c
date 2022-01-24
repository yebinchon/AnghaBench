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
 int FUNC0 (unsigned char const) ; 

void FUNC1(const unsigned char *seg, size_t length, unsigned char *buf) {

  while (length--) {

    if (*seg == '%') {
      *buf = (FUNC0(seg[1]) << 4) + FUNC0(seg[2]);

      seg += 2; length -= 2;
    } else {
      *buf = *seg;
    }

    ++buf; ++seg;
  }
}