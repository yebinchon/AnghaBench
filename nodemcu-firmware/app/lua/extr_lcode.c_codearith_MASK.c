#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  info; } ;
struct TYPE_11__ {TYPE_1__ s; } ;
struct TYPE_12__ {int /*<<< orphan*/  k; TYPE_2__ u; } ;
typedef  TYPE_3__ expdesc ;
typedef  scalar_t__ OpCode ;
typedef  int /*<<< orphan*/  FuncState ;

/* Variables and functions */
 scalar_t__ OP_LEN ; 
 scalar_t__ OP_UNM ; 
 int /*<<< orphan*/  VRELOCABLE ; 
 scalar_t__ FUNC0 (scalar_t__,TYPE_3__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,TYPE_3__*) ; 

__attribute__((used)) static void FUNC4 (FuncState *fs, OpCode op, expdesc *e1, expdesc *e2) {
  if (FUNC0(op, e1, e2))
    return;
  else {
    int o2 = (op != OP_UNM && op != OP_LEN) ? FUNC3(fs, e2) : 0;
    int o1 = FUNC3(fs, e1);
    if (o1 > o2) {
      FUNC1(fs, e1);
      FUNC1(fs, e2);
    }
    else {
      FUNC1(fs, e2);
      FUNC1(fs, e1);
    }
    e1->u.s.info = FUNC2(fs, op, 0, o1, o2);
    e1->k = VRELOCABLE;
  }
}