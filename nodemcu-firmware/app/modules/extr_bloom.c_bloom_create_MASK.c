#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_3__ {int size; int fns; } ;
typedef  TYPE_1__ bloom_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(lua_State *L) {
  int items = FUNC0(L, 1);
  int error = FUNC0(L, 2);

  int n = error;
  int logp = 0;
  while (n > 0) {
    n = n >> 1;
    logp--;
  }

  int bits = -items * logp;
  bits += bits >> 1;

  bits = (bits + 31) & ~31;

  if (bits < 256) {
    bits = 256;
  }

  int size = bits >> 3;

  int fns = bits / items;
  fns = (fns >> 1) + fns / 6;

  if (fns < 2) {
    fns = 2;
  }
  if (fns > 15) {
    fns = 15;
  }

  bloom_t *filter = (bloom_t *) FUNC2(L, sizeof(bloom_t) + size);
  //
  // Associate its metatable
  FUNC1(L, "bloom.filter");
  FUNC3(L, -2);

  FUNC4(filter, 0, sizeof(bloom_t) + size);
  filter->size = size >> 2;
  filter->fns = fns;

  return 1;
}