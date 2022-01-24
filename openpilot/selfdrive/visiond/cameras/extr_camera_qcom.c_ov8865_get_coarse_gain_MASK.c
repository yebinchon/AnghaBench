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
 int FUNC0 (int const*) ; 

__attribute__((used)) static inline int FUNC1(int gain) {
  static const int gains[] = {0, 256, 384, 448, 480};
  int i;

  for (i = 1; i < FUNC0(gains); i++) {
    if (gain >= gains[i - 1] && gain < gains[i])
      break;
  }

  return i - 1;
}