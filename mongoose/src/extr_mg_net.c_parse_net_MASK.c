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
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (char const*,char*,int*,int*,int*,int*,int*,...) ; 

__attribute__((used)) static int FUNC2(const char *spec, uint32_t *net, uint32_t *mask) {
  int n, a, b, c, d, slash = 32, len = 0;

  if ((FUNC1(spec, "%d.%d.%d.%d/%d%n", &a, &b, &c, &d, &slash, &n) == 5 ||
       FUNC1(spec, "%d.%d.%d.%d%n", &a, &b, &c, &d, &n) == 4) &&
      FUNC0(a) && FUNC0(b) && FUNC0(c) && FUNC0(d) && slash >= 0 &&
      slash < 33) {
    len = n;
    *net =
        ((uint32_t) a << 24) | ((uint32_t) b << 16) | ((uint32_t) c << 8) | d;
    *mask = slash ? 0xffffffffU << (32 - slash) : 0;
  }

  return len;
}