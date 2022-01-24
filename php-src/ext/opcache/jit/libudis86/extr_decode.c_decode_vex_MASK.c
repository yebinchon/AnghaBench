#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct ud {int dis_mode; int vex_op; int vex_b1; int vex_b2; TYPE_1__* le; } ;
struct TYPE_2__ {int /*<<< orphan*/ * table; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct ud*) ; 
 int /*<<< orphan*/  FUNC3 (struct ud*,char*) ; 
 int FUNC4 (struct ud*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct ud*) ; 
 void* FUNC6 (struct ud*) ; 
 int /*<<< orphan*/  FUNC7 (struct ud*) ; 

__attribute__((used)) static int
FUNC8(struct ud *u)
{
  uint8_t index;
  if (u->dis_mode != 64 && FUNC0(FUNC7(u)) != 0x3) {
    index = 0;
  } else {
    u->vex_op = FUNC5(u);
    u->vex_b1 = FUNC6(u);
    if (u->vex_op == 0xc4) {
      uint8_t pp, m;
      /* 3-byte vex */
      u->vex_b2 = FUNC6(u);
      FUNC2(u);
      m  = u->vex_b1 & 0x1f;
      if (m == 0 || m > 3) {
        FUNC3(u, "reserved vex.m-mmmm value");
      }
      pp = u->vex_b2 & 0x3;
      index = (pp << 2) | m;
    } else {
      /* 2-byte vex */
      FUNC1(u->vex_op == 0xc5);
      index = 0x1 | ((u->vex_b1 & 0x3) << 2);
    }
  }
  return FUNC4(u, u->le->table[index]); 
}