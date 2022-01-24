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

/* Variables and functions */
 unsigned int PACK_FLAG_SIGNED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char) ; 

__attribute__((used)) static int
FUNC2(mrb_state *mrb, const void *src, int srclen, mrb_value ary, unsigned int flags)
{
  if (flags & PACK_FLAG_SIGNED)
    FUNC0(mrb, ary, FUNC1(*(signed char *)src));
  else
    FUNC0(mrb, ary, FUNC1(*(unsigned char *)src));
  return 1;
}