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
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;
typedef  int mrb_int ;

/* Variables and functions */
 unsigned int PACK_FLAG_LSB ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC4(mrb_state *mrb, mrb_value src, mrb_value dst, mrb_int didx, long count, unsigned int flags)
{
  unsigned int a, ashift, b, bshift;
  long slen;
  char *dptr, *dptr0, *sptr;

  sptr = FUNC1(src);
  slen = (long)FUNC0(src);

  if (flags & PACK_FLAG_LSB) {
    ashift = 0;
    bshift = 4;
  } else {
    ashift = 4;
    bshift = 0;
  }

  if (count == -1) {
    count = slen;
  } else if (slen > count) {
    slen = count;
  }

  dst = FUNC3(mrb, dst, didx + count);
  dptr = FUNC1(dst) + didx;

  dptr0 = dptr;
  for (; count > 0; count -= 2) {
    a = b = 0;
    if (slen > 0) {
      a = FUNC2(*sptr++);
      slen--;
    }
    if (slen > 0) {
      b = FUNC2(*sptr++);
      slen--;
    }
    *dptr++ = (a << ashift) + (b << bshift);
  }

  return (int)(dptr - dptr0);
}