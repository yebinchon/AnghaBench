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
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;
typedef  int mrb_int ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int*,int*,int*) ; 

__attribute__((used)) static mrb_value
FUNC2(mrb_state *mrb, mrb_value self)
{
  mrb_int hash;
  mrb_int index;
  mrb_int hv;

  FUNC1(mrb, "iii", &hash, &index, &hv);
  hash ^= ((uint32_t)hv << (index % 16));

  return FUNC0(hash);
}