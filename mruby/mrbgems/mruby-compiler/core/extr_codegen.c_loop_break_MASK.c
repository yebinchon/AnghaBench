#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct loopinfo {scalar_t__ type; scalar_t__ ensure_level; int pc3; int /*<<< orphan*/  acc; struct loopinfo* prev; } ;
typedef  int /*<<< orphan*/  node ;
struct TYPE_10__ {scalar_t__ ensure_level; struct loopinfo* loop; } ;
typedef  TYPE_1__ codegen_scope ;

/* Variables and functions */
 scalar_t__ LOOP_BEGIN ; 
 scalar_t__ LOOP_NORMAL ; 
 scalar_t__ LOOP_RESCUE ; 
 int /*<<< orphan*/  NOVAL ; 
 int /*<<< orphan*/  OP_BREAK ; 
 int /*<<< orphan*/  OP_EPOP ; 
 int /*<<< orphan*/  OP_JMP ; 
 int /*<<< orphan*/  OP_LOADNIL ; 
 int /*<<< orphan*/  OP_POPERR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char*) ; 

__attribute__((used)) static void
FUNC8(codegen_scope *s, node *tree)
{
  if (!s->loop) {
    FUNC0(s, tree, NOVAL);
    FUNC7(s, "unexpected break");
  }
  else {
    struct loopinfo *loop;
    int n = 0;

    if (tree) {
      FUNC4(s, tree);
    }

    loop = s->loop;
    while (loop) {
      if (loop->type == LOOP_BEGIN) {
        n++;
        loop = loop->prev;
      }
      else if (loop->type == LOOP_RESCUE) {
        loop = loop->prev;
      }
      else{
        break;
      }
    }
    if (!loop) {
      FUNC7(s, "unexpected break");
      return;
    }
    if (n > 0) {
      FUNC6(s, OP_POPERR, n);
    }

    if (loop->type == LOOP_NORMAL) {
      int tmp;

      if (s->ensure_level > s->loop->ensure_level) {
        FUNC6(s, OP_EPOP, s->ensure_level - s->loop->ensure_level);
      }
      if (tree) {
        FUNC2(s, loop->acc, FUNC1(), 0);
      }
      tmp = FUNC5(s, OP_JMP, loop->pc3);
      loop->pc3 = tmp;
    }
    else {
      if (!tree) {
        FUNC6(s, OP_LOADNIL, FUNC1());
      }
      FUNC3(s, OP_BREAK, FUNC1());
    }
  }
}