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
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int FUNC2(const void *buf, int len, char *dst, int dst_len,
                        int offset) {
  const unsigned char *p = (const unsigned char *) buf;
  char ascii[17] = "";
  int i, idx, n = 0;

  for (i = 0; i < len; i++) {
    idx = i % 16;
    if (idx == 0) {
      if (i > 0) n += FUNC1(dst + n, FUNC0(dst_len - n, 0), "  %s\n", ascii);
      n += FUNC1(dst + n, FUNC0(dst_len - n, 0), "%04x ", i + offset);
    }
    if (dst_len - n < 0) {
      return n;
    }
    n += FUNC1(dst + n, FUNC0(dst_len - n, 0), " %02x", p[i]);
    ascii[idx] = p[i] < 0x20 || p[i] > 0x7e ? '.' : p[i];
    ascii[idx + 1] = '\0';
  }

  while (i++ % 16) n += FUNC1(dst + n, FUNC0(dst_len - n, 0), "%s", "   ");
  n += FUNC1(dst + n, FUNC0(dst_len - n, 0), "  %s\n", ascii);

  return n;
}